  echo -n "Verifying service account access to K8s API..."

  echo "$(var_value_get_REST.sh conjur/authn-k8s/$AUTHENTICATOR_ID/kubernetes/ca-cert)" > k8s.crt
  TOKEN=$(var_value_get_REST.sh conjur/authn-k8s/$AUTHENTICATOR_ID/kubernetes/service-account-token)
  API=$(var_value_get_REST.sh conjur/authn-k8s/$AUTHENTICATOR_ID/kubernetes/api-url)

  if [[ "$(curl -s --cacert k8s.crt --header "Authorization: Bearer ${TOKEN}" $API/healthz)" == "ok" ]]; then
    echo " VERIFIED."
  else
    echo " >>> NOT VERIFIED. <<<"
    echo "  Values retrieved from DAP Master:"
    echo "   api-url: $API"
    echo "   service-account-token: $TOKEN"
    echo "   ca-cert:"
    cat k8s.crt
    echo
    exit -1
  fi
  rm k8s.crt
}
