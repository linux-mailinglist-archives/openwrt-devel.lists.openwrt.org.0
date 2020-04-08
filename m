Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFF01A1CC2
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 09:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i47NBbnPLqjtgZC0moDQRt1NYdiVzNWSh/o3jO0aNfc=; b=MaOQBxlFO/M+mrltgMu+x5nzg
	mg/r7RohzSwNQjYUeu9oQQwI2ozUtI1mFQcfYhUit5iFIEY0mUZCZ2dTCLlixJxiJOyGkM01eXJ1C
	quX8hPlYKc/Hw+Iut+OOh+/rbXr9COw/nWfDrfcgNBAfCSAo50Fb81TF1D0PEeG8wmlLXqxHmEjxU
	TFhKWdlw3X+bC0H6akbkSNO1Q/VNl5M3Jw2qIXPFyN/Zm5ZiTZC8TLgEtTio74N/ZVPHFhuCJ36/y
	U8GfvPtfmudh1bW8nj3io8ugWHQSvRKhi/vX221vkIeaj8v9kU5U9LJtJ46GCdkmirdzWqSa/fgPj
	70etA2AjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5MF-00065i-UV; Wed, 08 Apr 2020 07:42:47 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5M7-00064w-Ak
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 07:42:41 +0000
Received: from [192.168.180.1] (port=52876 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1jM5M3-0000QV-2O; Wed, 08 Apr 2020 09:42:35 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id 77571282D47;
 Wed,  8 Apr 2020 09:42:35 +0200 (CEST)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
References: <87eeszs9uu.fsf@miraculix.mork.no>
 <b5c15de9-5d32-2a99-922b-22b4fb1056b8@iki.fi>
 <874ktvs62p.fsf@miraculix.mork.no>
 <6c55f8f0-7950-bb4f-30e0-d245327a1f86@o2.pl>
 <87eesyqvyo.fsf@miraculix.mork.no>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <d2e66612-b3e8-8d28-5b10-981c496994eb@marcant.net>
Date: Wed, 8 Apr 2020 09:42:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87eesyqvyo.fsf@miraculix.mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_004239_675541_809DF8F7 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Is it possible to create two images for the
 same device with a different set of DEVICE_PACKAGES?
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5512438321621192754=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============5512438321621192754==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms060601060106080605080001"

This is a cryptographically signed message in MIME format.

--------------ms060601060106080605080001
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Bjoern,

I made a patch for include/image-commands.mk that allows to building squa=
shfs initrd images.
The reason for me is that the imagebuilder is unable to generate initramf=
s images.
When building the final images with the imagebuilder you can define which=
 packages to include.
Your platform has to use device-tree!

That's the function:
# This take the vanilla kernel, modifies the bootarg of dtb and appends
# the filesystem to the kernel at the given initrd offset
# address (respect kernelsize!).
# Argument 1 : initrd offset
define Build/prepend-initrd-kernel
	let \
		initrd_offset=3D"$(subst k,* 1024,$(word 1, $(1)))" \
		rootfs_size=3D"$$(stat -c%s $@)/4096*4096+4096" \
		kernel_size=3D"$$(stat -c%s $(KDIR)/$(KERNEL_NAME))" \
		dtb_size_in=3D"$$(stat -c%s $(KDIR)/image-$(firstword $(DEVICE_DTS)).dt=
b )" \
		kernel_dtb_size=3D"kernel_size+dtb_size" \
		initrd_virtual_addr=3D"$(KERNEL_LOADADDR)+initrd_offset" ; \
	if [ $$kernel_dtb_size -ge $$initrd_offset ] ; then \
		echo initrd_offset is too small for kernel ; \
		exit 1 ; \
	fi ; \
	bootargs=3D$$(printf "root=3D/dev/ram0 rd_start=3D0x%x rd_size=3D0x%x ra=
mdisk_size=3D0x%x $(wordlist 2,$(words $(1)),$(1))" \
		$$initrd_virtual_addr $$rootfs_size $$rootfs_size ) ; \
	cp $(KDIR)/$(KERNEL_NAME) $@.tmp ; \
	$(LINUX_DIR)/scripts/dtc/dtc -I dtb -O dts -o - $(KDIR)/image-$(firstwor=
d $(DEVICE_DTS)).dtb | \
	$(TOPDIR)/scripts/patch-dtb-bootargs.pl "$$bootargs" | \
	$(LINUX_DIR)/scripts/dtc/dtc -I dts -O dtb -o - - >> $@.tmp ; \
	dd if=3D$@.tmp of=3D$@.tmp.padded conv=3Dsync bs=3D$$initrd_offset count=
=3D1 ; \
	mv $@.tmp.padded $@.tmp ; \
	dd if=3D$@ bs=3D$$rootfs_size count=3D1 conv=3Dsync >> $@.tmp ; \
	mv $@.tmp $@
endef

Kernel needs following symbols:
CONFIG_BLK_DEV_INITRD=3Dy
CONFIG_BLK_DEV_RAM=3Dy
CONFIG_BLK_DEV_RAM_COUNT=3D1
CONFIG_BLK_DEV_RAM_SIZE=3D0

This is the line for image/Makefile or ...
IMAGE/tftpboot-uImage-ramdisk.bin =3D append-rootfs | prepend-initrd-kern=
el 16777216 | lzma | uImage lzma

16777216 is the offset for the initrd in memory (take kernel size into ac=
count), may be lowered for you.

Kind regards,

Andr=C3=A9

Am 08.04.20 um 09:26 schrieb Bj=C3=B8rn Mork:
> Tomasz Maciej Nowak <tomek_n@o2.pl> writes:
>
>> In include/kernel-defaults.mk there is
>> INITRAMFS_EXTRA_FILES ?=3D $(GENERIC_PLATFORM_DIR)/image/initramfs-bas=
e-files.txt.
>> Maybe You could add a logic for ignore files list if they exist. No ot=
her
>> solution comes to my mind.
>
> Thanks for the suggestion.  But I believe this file is used directly as=

> config to the initramfs builder in the kernel.  Extending the format
> would mean modifying usr/gen_init_cpio.c in the kernel.  That's a bit
> overkill IMHO.
>
> I am probably ending up with the simplest solution: Dropping the large
> firmware package from DEVICE_PACKAGES. Making defconfig images usable
> for first-time installation is much more important than having every
> necessary package included in the defconfig sysupgrade images.
>
>
> Bj=C3=B8rn
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--=20
Mit freundlichen Gr=C3=BC=C3=9Fen
Andr=C3=A9 Valentin

Systemadministration - Projektkoordination


--
MarcanT AG, Herforder Stra=C3=9Fe 163a, D - 33609 Bielefeld
Fon: +49 (521) 95945-0 | Fax: +49 (521) 95945-18
URL: http://www.marcant.net <http://www.marcant.net/> | http://www.global=
-m2m.com <http://www.global-m2m.com/>

Internet * Netzwerk * Mobile Daten

Vorstand:
Thorsten Hojas (Vorsitzender)
Marc-Henrik Delker
Dr. Anja-Christina Padberg
Handelsregister: AG Bielefeld, HRB 42260 USt-ID Nr.: DE 190203238



___________________________________________________________
Ausserhalb unserer Gesch=C3=A4ftszeiten (Montag bis Freitag von 8:30 Uhr =
bis
17:30 Uhr, ausgenommen gesetzliche Feiertage in NRW) stehen wir Ihnen
gem=C3=A4=C3=9F Ihrer jeweiligen Service-Level-Agreements unter der Ihnen=

mitgeteilten Telefonnummer f=C3=BCr St=C3=B6rungen und Notf=C3=A4lle zur =
Verf=C3=BCgung.
Sie k=C3=B6nnen nat=C3=BCrlich auch gerne jederzeit unter support@marcant=
=2Enet ein
Ticket er=C3=B6ffnen, welches am n=C3=A4chsten Arbeitstag bearbeitet wird=
=2E




--------------ms060601060106080605080001
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
C3swggTwMIID2KADAgECAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRy
bzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFs
aXMgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyMB4XDTIwMDQwMzExMjkyOFoXDTIxMDQw
MzExMjkyOFowIDEeMBwGA1UEAwwVYXZhbGVudGluQG1hcmNhbnQubmV0MIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlybRZ/OtSRqXftAS3r9d+hMfULJ3AIsTG7l1m3ataDk6
e7uMqx3jJCnWtW6pDmF8oQeNeWU5TCgS3ewkN6Tqv8ndx8IgZzSDbnsSv9a+FGtWJImt+SCD
gSlUM5KSklnf9oYfCp6QYmbZ0Qb5zoQ3wUcBSYNnNrvjRHg45fgoQJxXyQ4scNbdtF5nwjkT
lN/ImARprPWMeX8Asa0ftZ7wlK8snfYso+4OU9lGrxUtDPwKwQPfc/Hol1/uRlceKeO/Nqrb
hwEMV+03pL8o/9y6jIQ6gYdjwXgTOivJ8f0/nuA/aYfqjfaIeFZs5q9lA5mpOr9rsM2w88sP
B2FDLBg2BQIDAQABo4IBtjCCAbIwDAYDVR0TAQH/BAIwADAfBgNVHSMEGDAWgBRr8o2eaMEl
BB9RNFf2FlyU6k1pGjB+BggrBgEFBQcBAQRyMHAwOwYIKwYBBQUHMAKGL2h0dHA6Ly9jYWNl
cnQuYWN0YWxpcy5pdC9jZXJ0cy9hY3RhbGlzLWF1dGNsaWcyMDEGCCsGAQUFBzABhiVodHRw
Oi8vb2NzcDA5LmFjdGFsaXMuaXQvVkEvQVVUSENMLUcyMCAGA1UdEQQZMBeBFWF2YWxlbnRp
bkBtYXJjYW50Lm5ldDBHBgNVHSAEQDA+MDwGBiuBHwEYATAyMDAGCCsGAQUFBwIBFiRodHRw
czovL3d3dy5hY3RhbGlzLml0L2FyZWEtZG93bmxvYWQwHQYDVR0lBBYwFAYIKwYBBQUHAwIG
CCsGAQUFBwMEMEgGA1UdHwRBMD8wPaA7oDmGN2h0dHA6Ly9jcmwwOS5hY3RhbGlzLml0L1Jl
cG9zaXRvcnkvQVVUSENMLUcyL2dldExhc3RDUkwwHQYDVR0OBBYEFImeFFJEHqtLlPJrjCuY
OxjU8gw2MA4GA1UdDwEB/wQEAwIFoDANBgkqhkiG9w0BAQsFAAOCAQEAr9jVry5tlkghgWGp
BA1nEFH15gyb3bpGsvy0xGi324regn7RfcYZ0Xhn4rKcpKYC6CjGR9aEcQan5xNVAM/kgW4Y
/LZMqWqdyYpPEKFkGXof7G0AoD8jLRwaMgKiYIFfEGI5j4rp5V1gw/iP3kiaK5OjUTQeGdpt
rGuPES2xq1uDBO2a86G1g6hFRMNojV6hF4V6A+nFucnGG9YqjyIZ1ioZc9gv957T0ti8LTeM
EkNW6QEOfj8WoDRJLPw1DnvvY1GNPtSfm0XBVWFrCtGHLuM3lgeffDpMb8DsIWAndpWkw3xf
y4qSus5fTjZYCjp0APX3oU2kagiTpvTJlpORTzCCBoMwggRroAMCAQICEE/eEEvtlVvei61l
h8xBXuMwDQYJKoZIhvcNAQELBQAwazELMAkGA1UEBhMCSVQxDjAMBgNVBAcMBU1pbGFuMSMw
IQYDVQQKDBpBY3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEnMCUGA1UEAwweQWN0YWxpcyBB
dXRoZW50aWNhdGlvbiBSb290IENBMB4XDTE5MDkyMDA3MTIwNVoXDTMwMDkyMjExMjIwMlow
gY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJnYW1vMRkwFwYDVQQHDBBQb250ZSBTYW4g
UGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEsMCoGA1UEAwwj
QWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24gQ0EgRzIwggEiMA0GCSqGSIb3DQEBAQUA
A4IBDwAwggEKAoIBAQC3aHN62TzUL/vcZ8o9zpR8/4kZztoaY/MZR5AnWCjcJ0WmwE+idEQN
dQN2ZEIhGRMOugffREuxM7/SEQWJiMLK+9tJVKbTmxeS98lc5d582orbV8FrKvgkKAxHItXC
pFheUojttvjadhKbthxcZMOZ1zJ2Ym66pwuoVBrBaIEw1FFUSLi5bm5cFmBYaarw2gof/7nE
YEVt/q01NZwaE9Vx5F6y7ArXnn46IfqNNbTU1rxouPtzsgAYnRj17qGIe1G2F9btLBtTvKzv
drec1e/wq/1c2vRG8koeg6wqrGN997DcYpCsxcgcHm2b+N7dcScjFRPwkbewSyTsh8XdWKtL
AgMBAAGjggH+MIIB+jAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFFLYiDrIn3hm7Ynz
ezhwlMkCAjbQMEEGCCsGAQUFBwEBBDUwMzAxBggrBgEFBQcwAYYlaHR0cDovL29jc3AwNS5h
Y3RhbGlzLml0L1ZBL0FVVEgtUk9PVDBFBgNVHSAEPjA8MDoGBFUdIAAwMjAwBggrBgEFBQcC
ARYkaHR0cHM6Ly93d3cuYWN0YWxpcy5pdC9hcmVhLWRvd25sb2FkMCcGA1UdJQQgMB4GCCsG
AQUFBwMCBggrBgEFBQcDBAYIKwYBBQUHAwkwgeMGA1UdHwSB2zCB2DCBlqCBk6CBkIaBjWxk
YXA6Ly9sZGFwMDUuYWN0YWxpcy5pdC9jbiUzZEFjdGFsaXMlMjBBdXRoZW50aWNhdGlvbiUy
MFJvb3QlMjBDQSxvJTNkQWN0YWxpcyUyMFMucC5BLiUyZjAzMzU4NTIwOTY3LGMlM2RJVD9j
ZXJ0aWZpY2F0ZVJldm9jYXRpb25MaXN0O2JpbmFyeTA9oDugOYY3aHR0cDovL2NybDA1LmFj
dGFsaXMuaXQvUmVwb3NpdG9yeS9BVVRILVJPT1QvZ2V0TGFzdENSTDAdBgNVHQ4EFgQUa/KN
nmjBJQQfUTRX9hZclOpNaRowDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3DQEBCwUAA4ICAQBg
RLoZoqty+w5BmkTBuhU5vZ2uL98mtylvsZIRb0mYD4p6ngYuan1fnQi/wQrjvyTB/ZoCOc+e
w52Ii0AtwiB5xLWpXE34Rj5XkYI0TLhUCwHmDOVAGYoj0/g/Eu32mdAmd4JUS8OdUExkCWUg
vmze5oKIgRvx5hmoby1o5ZIzWeqOgJlQtxyFdZhqMGpomDRFQ5np/kgHSVvbocD/sRRWaHWd
JWCUOhR4Pt6Ug1cemHTPeJ/XvbZTJ1ygfgmPdlpj121DjAlI2FJk7MRLvZSRLrB7/nnoU4az
uh4la5B7xGrYR55IaYaWJkpRtijiMH8LaiYyfQvhDAjnAw2tZ3YVE1RTDEwGZsli0RoNFNDv
Yc8DwOdtGS9ENImSOxOipTpmkGUF/izkTCuFeoVVvasz2YYI8NkmLsfDfLwFgP93eJMvo9bl
SM5NKkVydIg/gdbk8joxMdeX5pvpqMKe8nDoTVMYuHfMnKm/kJDwW2bTPswou3lmvYTiOiNl
d5mfWxSlKqJ1nKn2Yb8tgxGYcyS2ENGcOc7a0e/n5g47hxQRtO3kHDATlE+Oqi+yd53J3lKK
Mgr6TUwJcUsxN8RHPepQ3eL9/C55dwbLiMR/af8W9iwRjcYEddkIxVY998F9uX8hOOz1D00b
ftsASb+aDbI2rTY0uMNtAgqC31bRoFT1KzGCBBcwggQTAgEBMIGiMIGNMQswCQYDVQQGEwJJ
VDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEjMCEGA1UE
CgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMgQ2xpZW50
IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCWCGSAFlAwQCAQUA
oIICRTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA0MDgw
NzQyMzVaMC8GCSqGSIb3DQEJBDEiBCAKwT2PyPNPGlYKyDwMDkMO5n/wqvEqu+I3QECm+0O5
NjBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMC
AgEoMIGzBgkrBgEEAYI3EAQxgaUwgaIwgY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJn
YW1vMRkwFwYDVQQHDBBQb250ZSBTYW4gUGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5B
Li8wMzM1ODUyMDk2NzEsMCoGA1UEAwwjQWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24g
Q0EgRzICEHUXc/pcZ5UbYhNI1ws2ljYwgbUGCyqGSIb3DQEJEAILMYGloIGiMIGNMQswCQYD
VQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEj
MCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMg
Q2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3
DQEBAQUABIIBADfnoRFE/9JYlsH1X74yy0ZhvjoZGsThpQ89D3OVMZnZGy51khavJj7dNoOu
KaIXFtpFdraHQ0Rp9E5iuv7fOCgUIa9cHV3p0ePdvS/Yt7kn1gusJrso11eRyOO7b+sVWhVV
Bw4fF0+GDHtU6GMDhp8Efj363zq1r44fFKQn8rN+lpZ4S+PFtfwcSyQ3htX+v+lAkUUzoqG/
n/5golijgtKbVp4JsXmmXEM73LP6WnYfOGn4CDe1DY1JhJFsUdcoPRkg86NYoVA5L3G89mqf
U+tRXc01nVKkThf1dZGdht+PRrKB0GZ+bWJ3CBsYv+o/ZKpT5yWhjgJDKoqo+/i3m+IAAAAA
AAA=
--------------ms060601060106080605080001--


--===============5512438321621192754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5512438321621192754==--

