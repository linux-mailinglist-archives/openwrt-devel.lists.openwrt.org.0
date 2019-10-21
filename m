Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3008DEF4B
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 16:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:Reply-To:
	To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KGKELWLsJBTG9FPFJq+k1JdioVqYvHR6aq8uzaV2Uyc=; b=HagqO4lqxIcV9dVvtefSY18Mx
	zbwCNp2Azvwdc3J8cjQSgLtBgOrAJyTpnwkDWBr/FKJZ5uKzUW44JSPJhCfgg5kW4SU4a2ax0YqVN
	vWIp95aIi5fPAhT5sOnkH0OnF6mKiqhl4zwpvke2jmqjmHeDf1oi3MpL3zLnDM7YQJV0aurI8myEC
	OVk+tyUk2N/cKkgA4ZN8YlenPMHQoWA11x12Fi7eQzybspvtS/C6wRTztJMOov1SyNMKKBHjFtt8e
	S/wk8DgSGmbm0eCNa6eUR+IteQvbKSYcEao72S9q4w1anbGzg+Z5WF59mcSLPmO2kP2KYq3OcMa2O
	Q7eTVGyxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYYG-0004H3-QV; Mon, 21 Oct 2019 14:20:52 +0000
Received: from masdeu.rogerpueyo.com ([5.134.119.116])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYY7-0004Fg-Ks
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:20:45 +0000
Received: from [147.83.42.185] (dync-42-185.ac.upc.es [147.83.42.185])
 by masdeu.rogerpueyo.com (Postfix) with ESMTPSA id 6E333617
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 16:20:38 +0200 (CEST)
Cc: openwrt-devel@lists.openwrt.org
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
 <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
 <9d0579ba-ba78-9c77-0ba8-5370baaf9eef@phrozen.org>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Openpgp: preference=signencrypt
Autocrypt: addr=roger.pueyo@guifi.net; prefer-encrypt=mutual; keydata=
 mQINBFZobbgBEADHmOhM2Qct8UPGKcdzXKlWxLcaDsgv/trVw08xpS+VbXtzLuHQ8JpD+t7Y
 OHRaersrfp0isxbtiZnMhInUACsvAomHHCWxKB9RKLQAQ0j/NxrGu10XGRhBPvu0lkD+3VXh
 WFpVa8+6h9WjH4c/NGp5fyPHIVzYRhYMQlQ36iB84KOzOc3Ul6llxrnCac3ZUI0TnXk6/1Xl
 magtx4mjTM23EBEof/FlksEqR0dFHeOseBinLN6E20DgVF9+zddRBSnLI01Ag7rqAtt+//F3
 Kp0yXVisoxa2ATAbd3pMLht8vhYwWdrY/VpKBiMIi8LcMKRWK31bAJF7esi9xBlrKXJ91FcJ
 vgC+zTXnZ9KNcTESG3HSTo0T6OYc58CAYKyxuz6IehKKknd6xVOFRWpA3DsW9b4TOxJO5Vyn
 f9efdnrLrqVu/Lo84UskxmVySbMDcPQVgvUvLPhgmXEo2/BhJxGG3TmeuQu7wCBFOK7sDqSC
 K1QaQjbCkb2zXUNdmMw4Ee+nNcU8gJVgDHjiAqy/Bazo2RCcbkYWlgDbcDi1l0JP7aVGB/Hy
 1KYZejhl+STL1Rs4wHE0zNUHXr+2XYTZ96QlC85TkkRYaAFndcuGAU+RxbyThMhGyRQcAofS
 l0wvXiE3KH3qs/URtqjmGeX3Y+kDdKzww38Xw3mxeZyFyso+ZQARAQABtDlSb2dlciBQdWV5
 byBDZW50ZWxsZXMgfCBHdWlmaS5uZXQgPHJvZ2VyLnB1ZXlvQGd1aWZpLm5ldD6JAj8EEwEI
 ACkFAlZobbgCGyMFCQlmAYAHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgAAKCRBa9Io341dm
 sWbBEACK8yQWbZJxRDXvc1QnScZp2ExpbXNR7YPJvAQsnXirPuThQNiGkMKyK27uIYe+NVEG
 SnzsHSiJrur/4UMUthE70d2Cvjfui3SkqdZ4qqU2J/VcKoYySG1SIPRI93ElbEcYW9dIzcmq
 tmVo0uFDcCbujPpDelX5BBgIVyO2QqjlnoZqk7UPLovCjCNogKRsjW+L1OGvFiUoAYFXVjk6
 CiW3rlRPvCslS7+ayVlgGnz432jbEzVZVERb1wbVlb+LBTT5LRME9c9WHBfu9/rJiw9P6jyQ
 Ddpyd5uTWKj9G5nv9l0Eo+ZOw7+DZVhOdyiw3KVeoMtGrCRRKAkA8+jAWDk0SP49oWY23caD
 4vgn3+NYy332BH9iZZf7Fx/P274dNGxjW05duplfiYSwND2Ct1by45Qk8PHShQoJYBJJMGqr
 Ql33LWw5fnxvJhw6LlHoJ44s7jo5LJOblq9VahXAEO+DsEXAV4fKO54B1lXVKeuGYBMfW/ey
 gXhGC2DyTTuUztYX2NuOjjXtDTcLvb6unjRXafP0fzT37UxF4ig7616aLPoSdqWQZegamUKg
 WyANWZ7NhHHiOnfKOUGh6ahTfWJZIxYJqJMENSYiMrCImMR9aAhueoW+H7yMzeGXDv72otb4
 0VsVdrEoCsAHsAwaRtMRactQeAayMu7UcPcrG1FCdrkCDQRWaG24ARAAnV9RXE+6himweoHM
 U+BxfxkVFK57XxxIhxB3elRC87uluzJ7Ek30kLO2qzZMhC04IPbtOusWFy2Jm5EO/MXqceTY
 zJ7eFdkFE5dTPVtYm1JzIpEbNCXAqd08DwpTJqheSNoNdophqZx5bhZBUTwSL+cAx+hx1W/W
 1Mc2I/kZM+BVui03D2/nPR7Mfb1YBAEr4m4igD0ijwoXsZf4GpMJsW+526kqyIgOZwCvWmmD
 y31+oxS3IhHdOyLuOVgIvfCND+nhbVBpCWvKGt3zin086S+wtFT7ps+w96yWNCJz4RRJ5zv6
 OVIsouUgbA6J+BDNvcF8ueoYWhwo2EYpugQr357BFw4YAmeXQb2Y7PktZ3L9RJjvyAqmLyM9
 +IcohZ4LONlre0wq6LBLN+xk9ToKaO9zY3tNJQjm4emv3aphyQJ6OK5DAosFCpqRDEBnsEM7
 YouiyX8me6h1jbuN45iLvg3ILexPQyqHvQswPrLD7yHR61F5nW+J6CySfGzIYZbyInxp8r1b
 UBM3hfNln0bQFy7rjxDwcLpFsKQa3P74NqElxX5GrddWIq11g1sEPYW4FH3bGpYgd8TtVc1j
 LmZAQwKdpjjMoMYlV+kYVgNfFM2Bv9cqfoC42AVAu2uR8WwOtPPVvz6CBGWja1p5VsRfv1Qj
 POD7KD+OZjoeiNuzVQcAEQEAAYkCJQQYAQgADwUCVmhtuAIbDAUJCWYBgAAKCRBa9Io341dm
 scaCEAC+DidS6YCp8QKdqRUj3LUOQdQZl3ZxaElkg3u3RyIlyEkaCQyD4MuKHC+KSRdTFCx/
 hx6bWc13t7Uzl1PlmSdUJURpeZs6uohJP149ThrjNalkp/kylpHeIBIOnaThQNSOdiCQob0S
 0sZZW8yo9oXKxyNxhekhZreTKDeopVjpJDgwJ7JpV0CmavGW4Il4jfgswKQRn4QIvx4IY5z2
 eUBJ3QH8XE8Wmo1ahKybPzfIJytNv4GQE4IWkBm1UIw6pCGFv/Z4M1h4g0BQ+BwwcDKo78VH
 rawb8kLsFuBGyMMDs4bMUu5xapx5nyttq9Bq6xqe0bKaMjBctrfHcrw2EcJUq3kgJxxFf6xn
 4V3sKkx3IThZTmU/6DYumXAVaDi1eHfeEEjLGWymSeosQM2nrH/Ty4TpVVYxjI3PguMn/GeS
 3xlQcjclmVU4Agd1Gc04zYxC6rusW/mZ1u2AD14xVsHkkiBfTloH0oAP24kvpNsfWRawW6+/
 zkN9wXUrcQ3QCOVxyoWAe8cRLL/+cHUHpAytAU5FqHrS7s+94X9SiP5uWlnf+fmrzCboyqnl
 NU21+/v/2gaCdL37PogscBhyxpgRA3Od4WHB4IAMKWwAVRWJrHYrCb8Sycl03+lCATn8wpx6
 j8fJMgXCwO9ai/gMvX9Gz/qfy8CTIn8H2bXwzyNJeQ==
Message-ID: <2fbaef6f-df68-c15c-be57-53e238223914@guifi.net>
Date: Mon, 21 Oct 2019 16:20:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9d0579ba-ba78-9c77-0ba8-5370baaf9eef@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072043_952869_11E2E521 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Content-Type: multipart/mixed; boundary="===============4385088167424422929=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4385088167424422929==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="5PUwNKHwqkJ7MBOxmYeAhmPOQaQs45pnL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--5PUwNKHwqkJ7MBOxmYeAhmPOQaQs45pnL
Content-Type: multipart/mixed; boundary="VDXjusYfCTLvm4xrQyDtoHewEL43jQ9LU";
 protected-headers="v1"
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Cc: openwrt-devel@lists.openwrt.org
Message-ID: <2fbaef6f-df68-c15c-be57-53e238223914@guifi.net>
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
 <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
 <9d0579ba-ba78-9c77-0ba8-5370baaf9eef@phrozen.org>
In-Reply-To: <9d0579ba-ba78-9c77-0ba8-5370baaf9eef@phrozen.org>

--VDXjusYfCTLvm4xrQyDtoHewEL43jQ9LU
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi,

Mine were just suggestions; feel free to do it or not! :)

Roger

El 21/10/19 a les 14:53, John Crispin ha escrit:
> On 31/08/2019 23:32, mail@adrianschmutzler.de wrote:
>> "6t@eth0" and "6@eth0" should be the same, so this can be merged with
>> cudy,wr1000.
>
> I meant that part, sorry the mail was sitting in my draft folder
> =C2=A0=C2=A0=C2=A0=C2=A0John
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--VDXjusYfCTLvm4xrQyDtoHewEL43jQ9LU--

--5PUwNKHwqkJ7MBOxmYeAhmPOQaQs45pnL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEwCTDpYvv87wDBo8fWvSKN+NXZrEFAl2tvq4ACgkQWvSKN+NX
ZrG9Pg/+ODf1wruXCiXYswu6hDSMM1eVM6J8nN/TboBYnbuwTTkNtmWUQLTZplGT
pooo/AujBei7XuQHONFZ0ibox4Qq4wXa66s+kLOndpVOJgEqPb9GT1te+BeUa4eS
bIfGTPX0M7SiyrMY6e57KplMKOsx5W2wkZQlchPMYTiFfFX4Pz2gjERzDvCsRJFU
fxYNnysIjeuzNOL8z/CcYkKwd/SGl/qDgAagBcr8JDwrsFhF3uPxvpuFhKkNueOF
apJUYx0PA/OfSrK624CQEYwwbEvZzsIAkAKQ3R/iwM89BbfCR53h9scGXsfzOxBp
C/Byz7zqW09IFBH+Peb1lGG6gkVy8pcXGLx9IbJg8KZ6ccQkUKvsUf8HTUZFMrMV
SC6wBKWiBMAIWPYCwgpZoon4frp+FwLzAqfra5ABzVbtjuKB5oFswdeQ4YLncMvz
TzpLuyTPbMQdnY0JWiXt1sIocvNNydghABajKnHgMsENYY1pryLywy0w4SK6GCq3
v2eEqZb9avTdqhYgtfKH7JvxyTcQCIW+Bau+M1zJBU5cSj1cFF4h5Ezch9Nv2L6F
IGD08lHjqua8Bo199CGTAxezsq6jVPxVU3AadqfoB1cLfY7ZkT2PWrSQgFAGiB7T
f34o/qKcECWSyFOJG3pzAFWgC136OVSHnZz+1Iyu3twOfFy9VPQ=
=Uz5F
-----END PGP SIGNATURE-----

--5PUwNKHwqkJ7MBOxmYeAhmPOQaQs45pnL--


--===============4385088167424422929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4385088167424422929==--

