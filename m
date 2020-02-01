Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AB914F923
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 18:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gEFV+zW7KUvWKXl4urHOtvEN69numaVNt2YFIb5yO3M=; b=Cq5vs5JbjV1EU1ZlArqdKhSYx
	hanwEsEyEo66fh33jtGXtGFhwP8tAzR2x7PleBNHsxETz4WwDfLZYh3tbHgtNVEz7HKoZbd6iPJ6C
	fa5jmka3LuNykNGsMzmM190Lu7zN7mxYdaWbxehtuipq72MnuyDM5jW0HukSEYBmQoff9vGVqH7RK
	kzUlVJMwWsA73JUZeRwg7cgU0Z956SwY7qwTjo73prbFTRII/Q3xO4DjuTsfv3AhyY0sorbCcmnmG
	RY34B4rZ4Wi+gB8DUR6q2Nb4lLC9fwCimzkVGcaAMfTyBjoEDYcQLnI45n+oQmOUL+EZ0GraEjsFs
	IGsnVwHXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixwWH-0000Dj-3g; Sat, 01 Feb 2020 17:25:21 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixwW7-0000D4-Pt
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 17:25:14 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 8991952406; Sat,  1 Feb 2020 18:25:09 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 3ACF152404
 for <openwrt-devel@lists.openwrt.org>; Sat,  1 Feb 2020 18:25:09 +0100 (CET)
Received: (qmail 60512 invoked from network); 1 Feb 2020 18:25:08 +0100
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.41.162)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 1 Feb 2020 18:25:08 +0100
To: openwrt-devel@lists.openwrt.org
References: <CACfEFw8s5k30Zp+u_o=qbXqeRBAHa7uEGQ9mzqRsd8TvbXYXaw@mail.gmail.com>
 <CACfEFw-pWFiSpumGYb81_7GEN0QLB7smWriSWrYX5yYGizAfCA@mail.gmail.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; keydata=
 mQINBFU/gqoBEADOH7rJT9/cMjuHsUqHn38uxtIEPMsaI0zg1t4nU+sraS5aatIjWVouDdUB
 TBvYK6bVgef74Rh4zlnhNxOAQyWmTW1BApe4/et3F69wUpUW38mWYiwXJ1IoXFiK+74G3dix
 yvTl7zabyUzNqjP3MyEXFO0w0mQQqXWqncjD192mTZeN+AldCjIyNpKl3iTQ6mZUGydjPs53
 OBizq+gHOAa0tmxeYbMP5nI9dvgBFunycs2X8MNvAGCOLg24SqTTO0yxmwHlJEKDcxH+H1hN
 v3HkZGfBYtbdEBCiA7Y5trDYD9yjHaVf/u+U9BKnKX8RWQicoSiWT8ZoO9WSmAfwSaTl43W9
 X73QMnsDUQZTwox4c6ApnnhCU8KSAJeg1ghVKp7rH5W9I3YWMDXCVETS2NZYBuzRaGGzoc6X
 g8kAHAEBIJV3eodw+EAi8JOEBfAck8/DHKbX/3Z+1vmT8oU+P16sm9wXRbDF8sAsdu49Tdnf
 aRlVtSDU2sRT6jWms54+Mz0mLdU5UNQZZmC+/H8L8Km+aIpmEsMk0BPSSTs0RlD3+rtbsX+Z
 cbnD4QUU2fHjqmxbuyBxBjDrrbQFiai7iXkJnPxmrX8M7NAQtKsgCaBhL1Vr+Wf+kQ8iOO7o
 HqwmLINZ/ibA/fqq0WK1zbJIXFFFF1spYPobs+pyIhE/F2/UKwARAQABtB9Kby1QaGlsaXBw
 IFdpY2ggPGpvQHd3c25ldC5uZXQ+iQJVBBMBAgA/AhsjBgsJCAcDAgYVCAIJCgsEFgIDAQIe
 AQIXgBYhBGWYhTxcLsRL82IiSzqh9bNH2UCGBQJdN+peBQkLus60AAoJEDqh9bNH2UCGoXkP
 /1YHgYPSlpkWRewx+0OKkEncR3TZ1R7uoGoj45rYf2QCfYiwJfAo00Nal4DU2/Czq5hLj8CA
 S9T4TY5r3jR8PxRUWikgrEuRWNeT6cNliCP2SJgZZNo+LKOM/Be4Bzxp44vCr7HL8grfURFo
 5uyXHvxsaWyH2Im3Rbe03A6Vrx2oY+ir73h55TrCLK7gieKtv7VVEmmFJ9IGcKcilS2DfEFM
 RGU9Bpe492fq28yGu9dvZLASDHQHBlSBDYBC4vT/QO4InoQRt6qzr+ag+rqO5I2KMIyzG1R1
 KxfNPj8bUOWDKE+uVKTgUCMSf6yDSnyalNxSCq2HpgWNbd9/8hMzpbkt95IC3yxT6NtShzP3
 +cIWgbE3/N5m5CLu1VPnT44Vdr2nPbNhmO7MgfGF7FqhPz/87riMUbAZcIFGCEet9ClC46wx
 WVLC7xYSM6S7L6sb6hCz99l4JxVoKb2QiwcyLqLeFaTq9WqMDr3RxfEgNMvvi2VcQAU/ySBR
 T5gabtfKpoaPkh3QJhpbdY6sNqrsgYUeJhz4wCPNyBFE4kF0De2g+Aj7PkVDxNfhH2uUIEZz
 5+XPx70U2vQcdL3DPdvSRAOuOERfI1Utkge4ru/XjQ7Wkz4Vy5cwak+SChWxtZqol3Wxe4e0
 +TU9PwuEx32wd2IVynrDS6dzPKBWuIC7xIGAuQINBFU/gqoBEAC7Sf4s4A1ihkHDqH9oeMNF
 iK584WveatGvRHXP/b2v0bcKBgBH7BEQbd34Sh/oaKFtyLTdJpsicUx+nsHQBn1jZvIShq4s
 bUamtMP2oiHUolufEUKsdMpMRG1uWHXg4jQpTOpc6zEgqrTIjjFSDnvj15HAR4K0EijLjPft
 NcK76/dNVUm9rsbLyKPUsH/EFU8KahPNUec6XwMqx09Dg85f9OovTa0DY8GlA+SWkB+TGual
 5BtWubwQwZB0859oUJR9wWeP/z+pq5mEWAiswmvGhfNB5b70A/cr4F5TvI02/MM0+ktBDfCn
 leZUuYnTG6uqhVuF5mJAG0XgxtDEhP71iIu/nXigYr1Qb6zIGP+cTj0DKYvo5wFHf9l8GTlU
 AErKdS0/ksM/S88Su9wqwT1vZD8CqgaI9Xd8n1+GsWK+hLnp/Et36yXiV7+64Q0wOcSDx+Og
 agYnRRAx4QaDzttwjVXkPphe0nLW/mDRGjyYn7/KHhFKJ+fnzsm562+5vbDpMaqycBJphm9q
 g3q52dS71P3RTbNbTIa7+YiubYmMklipOmMEtlvnIR30MohOjNBA+VSjLTXCV2lOBplmHydH
 DbQL5QkxQrQmKwUEAHRG083AIwLtyLofoig7Fk5OQ8R50VDQar9bo+0CPiQUEceiP6ipfO75
 RKnV9mfJXjrWrQARAQABiQI8BBgBAgAmAhsMFiEEZZiFPFwuxEvzYiJLOqH1s0fZQIYFAl03
 6k8FCQu6zqUACgkQOqH1s0fZQIaQxg/+N0mZ4Cf2oPNxI/y+VUS9UCqXQ+t2G/34Qoo5VMKk
 SEWsyb15wKCMnsYfoLRJj15EU53lfPsXYfNHRFh2oTTCd2+y7XicYxPCyIGVWSz8oBgcKVOW
 IfkCL+XqIxF5nb8TXwax+oARp1W/dzyLEMIdsWNR549leXpvPIYTbFjay+zjFnG/+MqaCu/6
 60c3vkqzg1prE5tQ7QF8zzI/KJfoINS6hKgQFN5CkhoSeYVwqZ5bXxcWC3FgFSHLe/9YjkW0
 EypLHzTOeaWWij9yLtixyE/RiJHbkE7n8uq16ncviHPq+NtcURvNZLFMlsG6T8l74l38f3Dk
 IjnwZOEZdwVoiObKzdMG3EOOCH797o6Zg4KhG7UNW3P/3E/l6Ca5MujiKEpbxKdzvyA3VTWf
 HGVH3AfJFTUcpKC0SwX+NdrCOhSIdIAknmKk9FId4JEAepKHLzIfQE6rdvSjJ0phwiMqakcQ
 arPZfW3WE6wXAKgHZIm07FAB7mqL8IV+kzXz0Y/SqJfGwzCWV09OyqKGEraR0m1CwW6gVCwB
 10aTh97JYJOgM+QjCThMiY2PdRtm8CO00YvreJo0gkInQ/5aPqYq8loNxgkfLqNPgqGz+JPJ
 NS3ShyBmyTA2vRoqyvQnq4aMuODVF3fAM5mV4N+cfw4hy7I3QoFqu6jLGw4pzTp9JWa5Ag0E
 VtRTiQEQANav+8IbOxCZeofMcudN9OXHSerXy0H9azcknEcqKEP8JJMKdimxbP4J7tBLmZXy
 rzMhRJhoJKTOf3XNCQp7SVrva8grJL3rdvvAU0LbtBnbS/rC4AUR+cruuvhNEswtdF3XwH6Z
 zDL31vWrJJtzfiPA8+ESRpD4X7/ZSvtXVlaF/IE6lVs4mu3hrBqoLaNDvoDAWsDIc3pwACjK
 siOIb8REBG6auIJti6dmNMEcABjDlEv8zom+0h64K1QG+fRGeIQ1QdTBhARlVVAz1B1jzFK1
 12xFZVDj7yMghmTdN/IFMz92NqnmqpevtVusyV7zkOlX/AJuIhaSNVHX85ZTXXYYWSWtcyhg
 YFhmpW5ItTSKur+jTWZ8eriZ8WbxcvRZ3t1X51rRRpOCCKAa6YSIQ7z1nrTWb/aBWVcyuHF8
 NV996hTxi6ussJk7GVEpXv4/poHxp4y0TtDdT5sIPI6UxJc77Qn3Y4UsRWv7uOrb31HSzuwz
 ds9T/QiG2QjbKqScJdAvoGvuifeVFr/ILHHUHTLddwAxibtZaqJO4R+QuaGPa4gXHaE6TxaU
 pSOuOgsIP3havXoa6u0oII0+k8H2qtMGYpt4IypXo+wORbuuA8YZPtuT3K/h55tIeNXanZ5C
 ptnPnDV3ktgrg+PCDFPf93hat0zx40wIFCWFnjw8AA7/ABEBAAGJBFsEGAECACYCGwIWIQRl
 mIU8XC7ES/NiIks6ofWzR9lAhgUCXTfqOAUJCiX9rwIpwV0gBBkBAgAGBQJW1FOJAAoJEELi
 y786LmbTOMwQALHrtrxjq81UCkSZFHjKilkbPjgnY/hcQXp5/2OvLDi2d30ajDTnszazJ6wc
 jR/YOqZMb0YvofuZYDrqg01s/5RZx31cCs+HhRQXqF7fZe3XaosXQKEUXqfGHbzX+WPexyp6
 baVsiNc2groC/44KBLcxJ1byA/UxTdbIN1hyagcei0UHeOBpTLz3UNErs0CzZqTTe4g3G+aL
 /wlsPA9NJo6S/CLxxukJs3UmntwoD8AjVU0wHxJc92ZxoIqj75plzbb0hh1IaAnfQ4mu4gPz
 dJ91gWNksADD8lZSNg+YokN4j6vSDIjqvPxKj/KJQM0v7VHjBKmWZZb7CqYji9+DNz8eWOpR
 jzbza2KSqaEg5BOGVzB7E0Opa/gPVMQBQ1Sf1Bchuo+niBskFJahYALdwSGS+ym098P4bQQR
 l28kJ08NEJ3S0fwSsbc85OxBL3976PVWZfm2kcfMMeFTanx57R5nS/RYAVSLVAATXe82aMDC
 DFaPcYLdw6MZ5kTP/qN94o5PNYKqABhLW4seR4HEDg72biSHeT/r86FGneozC/YCoN/576C4
 MU4RVVa1EH9H3IfFMz9y48nwZZUIR/vz0nsqNKs+TJG+7pTsqXAJobxVNczI3FQpvM2XAsgh
 hcT1EPtREVFpk0SsprtyyiQQbViBYRAKSmu9teimV5KEWKABCRA6ofWzR9lAhjUUD/0V5304
 sZq8KGbBcoucmm7QGOQkhVusloEVooIXwxZoM/VIKKUvmrWM+256Q84HDVk2brBMhfGe17lI
 uHGEAaO8PRa/PWQZRsIo8n5NPRU+qQh+E0blUzF016d4t0n3RNko+WaawfUJxkmr6omQ0gZT
 2ugvgx6eQ52OkP0Q0I2WURxjVy8NI76souDHnAlblzi68+xqCRbVgY7JbSgBssx2xbLfDKFi
 arAPoEnMLP/L4qCMznIbVqsdZU2nkgTAPieaOFDR0VQ3WkARlg3Wom+usGFxxb9+3esjYdDT
 aj7nYa41HpC3VGXiJ1VJ+3dIK0wJu2Amj0ChuvmXzSmeuid62mf8uTPjZMIBCdnYocF+G14j
 pU1oE1NvtBgf4YKVUlLXnsSW9jR1Nh4vbSoMCVK231MrX9eqxkbGfAWyn0cuLfwb96dWKH2v
 eiY+XYspZsscppEv89HCM3MXol/GewSbHeNbBWBjpocCCaUyxAjgfae4xAMOV1uWbNHNPCaO
 E0odeH3CEEPqpxyE7v4aaKiih4BniILMu+ZVVX++/eS9DqtZzMGVeyMYN5nFfGSfnSc/0P2W
 +Ce3rRZbH40Q3GKVn1h19BWj2kBXJBWFpYSO5ZkCjLwwXozDMKJS08h3/7Y8FW+GngDqKgmW
 y9XZa9+U/SZJW40nBzM3hUy+EVkvFg==
Message-ID: <e1a92ceb-fe2b-26bb-5a69-9e57e3914db4@wwsnet.net>
Date: Sat, 1 Feb 2020 18:25:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CACfEFw-pWFiSpumGYb81_7GEN0QLB7smWriSWrYX5yYGizAfCA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_092512_150237_A9DC41DB 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] RFI: OpenWRT Upgrade System; ENH,SEC suggestions
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
Content-Type: multipart/mixed; boundary="===============0548374789630836501=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0548374789630836501==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="OQ0j2tb9838J4CopSoj3690Ug4BFKFnkL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--OQ0j2tb9838J4CopSoj3690Ug4BFKFnkL
Content-Type: multipart/mixed; boundary="qKYbepkghWglZOTbpvb6LCCV7nvalfWhz";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <e1a92ceb-fe2b-26bb-5a69-9e57e3914db4@wwsnet.net>
Subject: Re: [OpenWrt-Devel] RFI: OpenWRT Upgrade System; ENH,SEC suggestions
References: <CACfEFw8s5k30Zp+u_o=qbXqeRBAHa7uEGQ9mzqRsd8TvbXYXaw@mail.gmail.com>
 <CACfEFw-pWFiSpumGYb81_7GEN0QLB7smWriSWrYX5yYGizAfCA@mail.gmail.com>
In-Reply-To: <CACfEFw-pWFiSpumGYb81_7GEN0QLB7smWriSWrYX5yYGizAfCA@mail.gmail.com>

--qKYbepkghWglZOTbpvb6LCCV7nvalfWhz
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Wes,

> It's definitely an issue that the sha256 checksum check was broken.
> But, can someone explain why a person who is MITM'ing ipk downloads
> would change the package and not the checksum?

the repository index files containing the SHA256 checksums are signed usi=
ng
usign, which is a derivate of the ECDSA based OpenBSD signify utility. Th=
e
public ECDSA key is built into the firmware image and used to check the
signify-signed repository index. Forging the index itself is not possible=

without possession of the secret key.

> Are there GPG signatures of the package checksums signed with a key
> that ships with the release?

There are usign (signify) ECDSA ones.

> Are package repos downloaded over HTTPS? Is there a CA bundle in the
> release with which repo x.509 certs are validated?

No since so far the required storage footprint for a functional SSL stack=

(library plus certs etc.) exceeded the available space on a large fractio=
n of
supported models.

> The OpenWRT firmware couldn't access https sites without installing
> multiple packages first. Then they had me install all the root certs
> over an unencrypted connection. The opkg repos and install files are
> all downloaded over http.

Yes but they are (assuming fixed SHA256 issue) verified using preshared E=
C keys.

1) opkg downloads Packages.gz and Packages.sig, if either of these fail,
   the repo is ignored
2) opkg verifies that the uncompressed contents of Packages.gz match the
   Packages.sig signature using EC keys built into the image, if the sign=
ature
   cannot be verified, the downloaded lists are deleted and the repo is
   ignored
3) opkg translates package names to actual file names using the verified
   package index information and downloads these .ipk files
4) opkg verifies that the size of the downloaded .ipk files match the siz=
e
   mentioned in the verified package index information, if not the downlo=
aded
   package is deleted and the installation aborted
5) opkg computes the sha256 sums of the downloaded .ipk files and verifie=
s
   that they match the ones specified in the verified package index
   information, if not the downloaded package is deleted and the installa=
tion
   aborted [this step has been fixed]
6) opkg unpacks and installs the .ipk

> With full seriousness, I really hope nobody expects operational
> security using these routers.

Depends on the thread model of course but without an encrypted transport
channel, there'll be no confidentiality about the packages being installe=
d,
but [assuming a fixed opkg] it is not possible to modify the contents in-=
flight.

> Side note: something like these would be great to have; IDK which
> repos are appropriate for possible new issues to be owned by someone
> who knows what is going on:
>=20
> ENH: CDN for package repos and latest version file

We're in the process of testing cdn.openwrt.org which has been sponsored =
by
KeyCDN but so far the results are mixed and we're having consistency issu=
es yet.

> ENH,SEC: firmware update check script

Yeah, that would be good.

> ENH,SEC: send an email when the firmware is out of date

I don't see how this can be done reliably as most mails sent directly fro=
m
dynamic dialup IPs are classified spam nowadays. Any other solution would=

require embedding secrets in the firmware images.

> ENH,SEC: luci: display firmware update check result and link to latest =
firmware

Yes, that would be useful.

> ENH,SEC: add package repo (and firmware?) signing key to keyring

They are.

> ENH,SEC: include ca-certificates and/or openwrt-certificates in builds?=


That wasn't feasible so far due to the 4MB flash support target.

HTH,
Jo


--qKYbepkghWglZOTbpvb6LCCV7nvalfWhz--

--OQ0j2tb9838J4CopSoj3690Ug4BFKFnkL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl41tHQACgkQQuLLvzou
ZtNDpw/9FX/cH38iwK++JDRwc2kJHGB31KnR6TTWiacLdAktEnFQPsrNUP4/Jrw1
Tb9cwZcCOn4X8ycEaeFJE38h+GHaHc39XnZ77yC4eir651HZsQ3/Rs0Wpale9N57
tdhcg7Vh22k0ruGtYTzs+/+6FJwRfltr/oe9uauq6BbPKov+V92nBK9sHFZNQKs8
mN3pVUsVoKsgqesrvasWYpJ72dbUa7qnJS9b0jeRdrxK/B3uQxoN5hdz/DxXqPQK
p5y/FhgZt/ixVb8OhuB8IUT/ARO5SGWlye68clxOnVFWtIhWKHkdoRMZOPm+wBTL
ER+n3JeaEP6fXniF9KkiPoedu3x3Ke0nf6UKaY4pFkaWveNRH+qfiNCAuJ8X9enJ
6Cg81+EeArdENHJ3UMypdH1M7dHPCMC3xTN0OqOipBithdGSjskyh9mQMwniGaJq
/thrr2IK+2XhyYM54LY/2tIuIhXIuTm4oZa78ams1bhXcaCPOCPFtOcUV8Ep7pPS
29cCklKiU8zGHS3mZku4fkuXVaKGgZI/O92+R0QSIGzt2WYXtB4IuOk8G8Opw2CL
g0UTcGNdPznezYg0vHsIikW1oQSp5ydvSa3v8hSwHzaX8+XJYrkIcq3jNOA/qDDG
zPgPF/xrSyTfs0P2Iy/KIJjDgtrlwpu4rLz3FN43fUhwdIHEUso=
=sfed
-----END PGP SIGNATURE-----

--OQ0j2tb9838J4CopSoj3690Ug4BFKFnkL--


--===============0548374789630836501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0548374789630836501==--

