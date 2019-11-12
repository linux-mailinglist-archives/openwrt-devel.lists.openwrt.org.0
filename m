Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF093F8FA4
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 13:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mHPzeMZdMCeQNg2NCw9s83Z4m0eHsxFCCSWE7Zr+Oek=; b=nl8
	5OzeLjqaNZ1ZGl1pcemcoio8sN/Z5Klg6n5hhwBEQsagiGCGvOgA9BkGbfnrYL1RxkJ4kd588eq0F
	SjQjp+97sFk0AkMftrIaCvKlZg8w2IGNuKJlRlfenmWZyKpXJqjTI2jJ2IFe0wwgpElETz8w85uqc
	H168uVPbN/ctlndv30POaySiyPC8Sf1GOX0P+jOuQT/677gnlQEl1N4+weL0rYPhRLvCCB0OdEQJk
	FogXsgt2rPcys8Ow6zVyT+/jdo4Blk9ZMju3sy5pELBTvtFLB4toBwiCOCieqXvNSJJk/yGWs5iyy
	bbeFvqDIEBtuWlZ/C6EkoZR3ihxAj7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVG9-0004BG-I0; Tue, 12 Nov 2019 12:27:01 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVG0-0004Ag-1c
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 12:26:53 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MKt3r-1iC9SS08HF-00LG0P; Tue, 12
 Nov 2019 13:26:45 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Mathias Kresin'" <dev@kresin.me>
Date: Tue, 12 Nov 2019 13:26:44 +0100
Message-ID: <000e01d59954$7241b8b0$56c52a10$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdWZVG6WVWupbuHfTvy4ayfUCeP3Qg==
Content-Language: de
X-Provags-ID: V03:K1:uSoYcwhd+0MnjViJoEKYqyFZRt+NAD4lIcmq5xJc0X19r3F6vh4
 eKuJoCUC1mht9U+m60frNVC1+lCCt9dw5J/oD7JQ5+T7OLF54xYvy25vRJZ+KyLqVIwqeJb
 9PVKs/jqExu8KeAjA89TMbBi8XNcSvmZBALmTOzz4+3yVsOYjM+QYCmOdvK1Hn6kdz0N3BX
 WFNrVjKWiDvkv4BduawfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9eGbXUu8VEQ=:PY2gy7vMotEjA/UD/gZkBZ
 7F/EsM/R/wnp6z2pN7fw1tcr2Pco/tMurLFjcHDTlzrrRXKvF0kWiloEpUHr1wvncSuLIZbVw
 VtWpeaxhspA+DJ9egg6x5k1f6sTzFn7BfZEpt+5z0Z47RD/YzaAeFDIqMEbVeuX0xaqyGhDV7
 pne22pHvMXId0W6NZxPYPTGqpFAyIy7CeiW9eZ5xTlMDQbuXNIYF7PI4EvF2zEv5M+Zi3hpqN
 pav/HSaCQFLZTS3Xw4gRaw5C1m0XEGO9GkCn1s1zVvTHqXme5I7sXKnLbcCszlsU8TcZ6ZpYW
 tn33/xWRGP8P7Cx2K8sd27rhu2l60RhAmlA8k7e1ILSgj/jsfZ8L2TsTrgC1xTz/9H3OEm7/O
 fzka4JHCE8HcDOpBj7Xl/fX8xvSb9Z7ZtD4wHVdll1UxVyTmsp8s4Jk1jqUflPpAsaF5gsc+f
 3cI2MCc87P5MxlFRKDyfZnnfVhdy1zgmsnNbRxnSl5VnBmr/BegbtIhbXQo0+k8ur9rqEyKvo
 4xa+lzrQBeCS06bS5Kc6E12WFhDCKKgq+vGmwjSkMeFRhfjRImP+xQqKD51xnzj+KSpyG8NcM
 62LYyzlqzCH3wWT4mZ0Gb209Ongor+EgpkZAPnI3dHgb1uBpfA23EUfGluvttyPiU0uc46U/v
 B5AzVABRbGAmMQiYA126Sb+B9Uu3v294fC38+6M2rATDrLYMl5+OLlMyyJ7hNPGM9sA2UJs8E
 rL4RMQs976qaJDkFhptenNY4In7HkubeO3M7RA6XielYKalLqhuNqRmJQqV2Qk7K+8rEUDsR8
 /SK6Og7si24zBa5oAceW2eVhew/3UOcYPaZnvpMqI9/2q1df49WUEvW2kNBthrVPiMN5xi6zO
 eJaZW9UePNKZfL50yUr+eZ8nkorjRHKhdP14u/fn4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_042652_383253_90253406 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] OpenWrt: read label MAC address for FRITZ!WLAN
 Repeater 300E
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
Content-Type: multipart/mixed; boundary="===============2139824474654768349=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2139824474654768349==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=yymdwEPK3CXo5s=-="

This is a multipart message in MIME format.

--=-=yymdwEPK3CXo5s=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm currently trying to remove the dependency of label_mac in 02_network fr=
om phy setup, i.e. replacing stuff like
$(cat /sys/class/ieee80211/phyX/macaddress)
with extraction from the proper flash location.

One obstacle is the AVM FRITZ!WLAN Repeater 300E, where the calibration dat=
a is extracted with
caldata_extract_reverse "urloader" 0x1541 0x440

Is there a sufficiently easy way to get the MAC address out of there _witho=
ut_ relying on initialized Wifi?
I'm looking for something like
label_mac=3D$(some_extraction_function "urloader" <some_offset>)
Technically, it should be somewhere in the reversed caldata, shouldn't it?

If this is not possible (with reasonable effort), I would just calculate it=
 based on the lan_mac in 02_network.

Best

Adrian

-----Original Message-----
From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On Beh=
alf Of Adrian Schmutzler
Sent: Montag, 11. November 2019 00:32
To: openwrt-devel@lists.openwrt.org
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: read label MAC address from fla=
sh instead of using phy0/phy1

This replaces all uses of $(cat /sys/class/ieee80211/phyX/macaddress)
by retrieval from the proper flash locations. This will make
02_network independent of WiFi setup again.

For the AVM FRITZ!WLAN Repeater 300E this replacement is non-trivial.
As it would be the only device in the whole trunk to keep the old
mechanism, this drops label MAC address for this device for now.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Is there an easy way to retrieve phy0 MAC address from fritz-300e?
Can it by deduced from the caldata extraction by assuming the
standard MAC offset after reverse?
---
 target/linux/ath79/generic/base-files/etc/board.d/02_network | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 34f6e31047..a8ab07aef5 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -292,11 +292,10 @@ ath79_setup_macs()
 	ubnt,nanostation-m|\
 	ubnt,rocket-m|\
 	ubnt,unifi)
-		label_mac=3D$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=3D$(mtd_get_mac_binary art 0x1002)
 		;;
 	avm,fritz300e)
 		lan_mac=3D$(fritz_tffs -n maca -i $(find_mtd_part "tffs
(1)"))
-		label_mac=3D$(cat /sys/class/ieee80211/phy0/macaddress)
 		;;
 	avm,fritz4020)
 		lan_mac=3D$(fritz_tffs -n maca -i $(find_mtd_part "tffs
(1)"))
--=20
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=yymdwEPK3CXo5s=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3KpP8ACgkQoNyKO7qx
AnArsA//RKd1kcFxyuVs6VPMXHqXsjDpO4h3jPNsd4q7capCp2XF7a0DRlTt4iaD
EGXJLSFnkOg8TDMYXw6/euYfqGAjmaD3+VPenhnZbYjgL8y4pVtlAf04OEwMfRPB
H+J3zF4B3e1CmXgUdEuFcpq4WnJhzaUB59i4JQZjTNk5e94mLJkJLjz6BYspNMS1
ENRW4tcp5QMR7TICpdsfyZh5NND3qem9qh61JzLLu1p9PpjCgeuQuHe5ZTy7umVs
Bm3mZ2uivFleCj+5PN+YqQAX1P+HAPP6SkohEpcURagaxBj4fxnO0TmFgBlLvyHR
v2ZUj1Bk/VBipJ6YTMNGvr13AVvnJEdD75q6M8OvJTSOZxoIz1nDTkgPPWbkSBkr
mFjyu7PbhVJ7N03cjrKWC8G9wJJCOSDUSvXBJXJt457YKCrpmfnWyDiGdrWQ6EIq
orXSmRCpJgXaZUZ0RIf1GQs5F5QlGTVC7LchVhKuBAivHRC/EFX0THk1qUa97JY/
U2o9xXHKXuQMem4VPlqOxiX/plbJc3sn+uBRPHkqOwvYnFSXfNKL/eS0nNjigeve
nNtrlOJ6q0T+1PSU5+Sdp2lExawys4k5YaTilrHQw/MHHhdsDCh29L5uzjryWZ2E
JxPl6hpc9DvQPg1W0qFrXDLisZTmHzo3Dn1fpikGxjASN+aTv2I=
=g/fS
-----END PGP SIGNATURE-----


--=-=yymdwEPK3CXo5s=-=--



--===============2139824474654768349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2139824474654768349==--


