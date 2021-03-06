module github.com/pulumi/pulumi-azuredevops/examples

go 1.13

replace github.com/Azure/go-autorest => github.com/Azure/go-autorest v12.4.3+incompatible

require (
	github.com/onsi/ginkgo v1.12.1 // indirect
	github.com/onsi/gomega v1.10.0 // indirect
	github.com/pulumi/pulumi/pkg/v2 v2.2.0
	github.com/stretchr/testify v1.5.1
	gopkg.in/airbrake/gobrake.v2 v2.0.9 // indirect
	gopkg.in/gemnasium/logrus-airbrake-hook.v2 v2.1.2 // indirect
)
