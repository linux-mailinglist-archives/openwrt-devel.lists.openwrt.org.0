Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B542D14FC8A
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 11:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=06MvE9+pIWId7zV0vOWGSgWuxn8KUIQubEx8VBBsQFw=; b=Dukm8R3OYpBwVP
	/noyrZ0rGCmOCaKVR0WBKRqgk0kt9OWusqWQ9R5ZC9QNCB3OncLMhYmW4CS6Ux4pbfuvs0KKoWf58
	wMNFmQe8KAHekGa6AqoSOibf6aP/fNGiotH04j0iJ8UngruJr61xvBo+LzlZ2NMZ6HsT47yglawP0
	OQatCRH87B6CeuiCPKAkJLNZjGMitKQH8vLBrPaWrrOEr+SGql9uYMhGP5mbw2QCDFqP4s8STYvWX
	277gU1KqwrM4Lfd3ZbfJOhsAp429aawNigKUUxTnR3DlmCQ5U0cjliGGzHVbedhwihZckAd/z9zLu
	pONqcXLTRAodg1u+hMuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyC6K-0004pv-RF; Sun, 02 Feb 2020 10:03:36 +0000
Date: Sun, 2 Feb 2020 10:03:17 +0000 (UTC)
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
References: <587464388.598059.1580637797395.ref@mail.yahoo.com>
MIME-Version: 1.0
Message-ID: <mailman.28109.1580637808.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Dieter Meier via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Dieter Meier <relentless.1980@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [openwrt/openwrt] mac80211: Expose support for
 ath9k Dynack
Content-Type: multipart/mixed; boundary="===============7359744151324040396=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7359744151324040396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7359744151324040396==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic314-19.consmr.mail.gq1.yahoo.com ([98.137.69.82])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyC6A-0004pb-GU
	for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 10:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1580637801; bh=JACLL1BjnJOiyXk92OMa9io28KcENqPYNWqSvZZUN/o=; h=Date:From:To:Subject:References:From:Subject; b=qm7EeZl+Opvj1uMDc+VydqaiRQGOLaySWpR11lWzISlDX0Mv5vjJHSPUyQePLOFj+6TO26i4QwBSk3fBADOYOD+h16WjzWae82KFqRi+5zrc6RS26BmFPOZ76W8+dcBkr3dfoXlY1HUEGn1Ucj2yLdzbcDBkZyswCiel/xcDi2MTJhXE81Bv31MqC+IC6aBDb4SAmo/hLVztQXB2rJUGSHqg4OtAUBq1DFMeA/YuN/U3wPGvIDGVN9PtR0rx4v96m2WvQH3QNBfADmXI9Wvqf4NfLhU7Iu/I2eRAnWSYTCdTNCXfPaaaI7tKywMwNOFvg1XmyK/vjUbn8F9lJHUlUQ==
X-YMail-OSG: _bAw4iEVM1lk9JvjQhOJLyTRS6x.2ZgDJHsxj8gXourNI3b80F86DBz7sr1xL22
 kpOj5x7DFsRc9M30qTDtCQJ2kW1CURrt8eZybGIWWUwVVPDEPl6Ne3KD24Lw10_mpihYUxEJ2Qt4
 qseAMr4hOGlgwDTc3Q9gnARipaaZ_o6wCJgEoPPEg0ab.HJfby6rhxEPkLkYJ8l6_WenhtMZJcc9
 2P0Zdal1UBJ_l.Y3IEl5tS1Nehs5ofHVxO9jCV7wgVtZxu0d0iGmA2CM73P19s_VnZNvN0nu6yz4
 iWMjmLV_RBeK9IPrfmY80I2B6gLzcvsRdaWuTdEYqmpqmU456RfxCeDn0wK99Y9ttW4CoEjKHKDv
 rxsRvLS6fu8ubpMefpYaWbUYPxE4rOXMoqKN2G1R0WLzznApftEq3lCPS8_f3uvFGErrMV_d4bxf
 nrzIHc_U1P36.CBnOVYAGxnrFkMHUuDgziFlNSCP6DiuzM_D.0gZVzlBVH2cr0s1Dj1WSAXpWPh2
 voEGX.If7ON7EoNmfF.lZq0LGBaAauXGj_JoEfa9W_GEFuAyydxXG5qBCCE6.wVVLYZnKDTwYyNy
 45pRVGAKurTq1u76ExB4f8DuzzDDlhnqrmcIZx3EbdEyw_BThi4vj4NVGYV5Nal1GTJ7U4TiM9rV
 rGFVScmSrUt8MZRZV9z0isxUlmWdW0P1Fuob5sdB19Omhyqhh_mmP0vjSliT1HDCGtZmWvvoKE2A
 yrGD4un89EyqE0ice3wfPOlUY0GMluuU0VgMHd6Sk4NvxHe63qbyLqBBB2qT_ro9jxN0qIgxlame
 EEf8TMSMtYY.bcvXbnyR66AZnm9wdpGHjbCS5bbRVlWF8BLvOb7IwBMoW7mbtUWuIx3.p_AkKJz7
 ng6axtc717xcPIAnqfkYNkN11NcJiDwbx9Ykkbm3c1L0GeZRSb34T4vwFdDfMzkgxb2REDUKAWTF
 Io1PszYkUuIPsosQcNlkMH2c_OCeEIY.NWyybp9xm9xG.RoXBY.tofuKshg4Anrk7pDEy_zzEUfk
 69v0KJS9Jh_uAa.D0vl6KMACSEB5kE26gYbVPMYr21w.5.bdh74_jWs3n4NUeB7Pgtjpiji_zzYU
 F2o8Kvyxi5vf9TenuJ1tFHX0xxyUr7jeqLEk5ebulKtDdaM6iaXF21bzQ9hBhCd3MnyOex.o8yS8
 0iqrvR6BWO8agWW_LiekU5AcEt5SygQVWfsA1wvPt.saejLRRlUBh.D6qQuu3qRb5F._VUMDk83K
 5_H850QmMX5wZjm9.Abh47xOTUpVNZgFnubWb5kA312EigGNpTxYOQcWRdz5Akb_Y6EP16zedzcT
 VuiKEvAdKUOU8hYwTHJGxtw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.gq1.yahoo.com with HTTP; Sun, 2 Feb 2020 10:03:21 +0000
Date: Sun, 2 Feb 2020 10:03:17 +0000 (UTC)
From: Dieter Meier <relentless.1980@yahoo.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <587464388.598059.1580637797395@mail.yahoo.com>
Subject: Re: [openwrt/openwrt] mac80211: Expose support for ath9k Dynack
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <587464388.598059.1580637797395.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15149 YMailNorrin Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0
Content-Length: 7270
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_020326_577965_EE3749A0 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [relentless.1980[at]yahoo.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [relentless.1980[at]yahoo.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [98.137.69.82 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hello,
should=20

iw phy1 set distance auto

work in 19.07.1 on an Archer C7 v2 (ar71xx or ath79)?=20

Because on my C7v2 (ar71xx) I get=20

command failed: Not supported (-122)

If I set it via Luci it shows in red text that it is expecting integers onl=
y. I cannot find an up to date documentation on this topic.
On my Netgear R7800 I get=20

command failed: Not supported (-95)

which seems fine to me as it does not use ath9k. Can someone help me and cl=
arify the Dynack supoort.
Thanks



xback pushed a commit to openwrt/openwrt.git, branch master:=20
https://git.lede-project.org/8b42a260ed8ff6809cd0ade20a5c1fa003feb6d0

commit 8b42a260ed8ff6809cd0ade20a5c1fa003feb6d0
Author: Koen Vandeputte <koen.vandeputte at ncentric.com>
AuthorDate: Mon Jul 2 10:23:44 2018 +0200

=C2=A0=C2=A0=C2=A0=C2=A0mac80211: Expose support for ath9k Dynack
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Enables support for Dynack feature.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0When a remote station is far away, we need to compe=
nsate for the distance
=C2=A0=C2=A0=C2=A0=C2=A0by allowing more time for an ACK to arrive back bef=
ore issueing a retransmission.
=C2=A0=C2=A0=C2=A0=C2=A0Currently, it needs to be set fixed to indicate the=
 maximum distance the remote
=C2=A0=C2=A0=C2=A0=C2=A0station will ever be.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0While this mostly works for static antennae, it int=
roduces 2 issues:
=C2=A0=C2=A0=C2=A0=C2=A0- If the actual distance is less, speed is reduced =
due to a lot of wates wait-time
=C2=A0=C2=A0=C2=A0=C2=A0- If the distance becomes greater, retries start to=
 occur and comms can get lost.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Allowing to set it dynamically using dynack ensures=
 the best possible tradeoff
=C2=A0=C2=A0=C2=A0=C2=A0between speed vs distance.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0This feature is currently only supported in ath9k.
=C2=A0=C2=A0=C2=A0=C2=A0it is also disabled by default.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Enabling it can be done in 2 ways:
=C2=A0=C2=A0=C2=A0=C2=A0- issue cmd:=C2=A0=C2=A0iw phy0 set distance auto
=C2=A0=C2=A0=C2=A0=C2=A0- sending the NL80211_ATTR_WIPHY_DYN_ACK flag to ma=
c80211 driver using netlink
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Disabling it can be done by providing a valid fixed=
 value.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0To give an idea of a practical example:
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0In my usecase, we have mesh wifi device installed o=
n ships/platforms.
=C2=A0=C2=A0=C2=A0=C2=A0Currently, the coverage class is set at 12000m fixe=
d.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0When a vessel moved closer (ex. 1500m), the measure=
d link capacity was a lot
=C2=A0=C2=A0=C2=A0=C2=A0lower compared to setting the coverage class fixed =
to 1500m
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Dynack completely solved this, nearly providing dou=
ble the bandwidth at closer range
=C2=A0=C2=A0=C2=A0=C2=A0compared to the fixed setting of 12000m being used.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Also when a vessel sailed to a distance greater tha=
n the fixed setting,
=C2=A0=C2=A0=C2=A0=C2=A0communication was lost as the ACK's never arrived w=
ithin the max allowed timeframe.
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Actual distance: 6010m
=C2=A0=C2=A0=C2=A0=C2=A0iperf 60s run avg
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Fixed 12150m:=C2=A0=C2=A031 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0Dynack:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A058 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Fixed 6300m:=C2=A0=C2=A0 51 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0Dynack:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A059 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Fixed 3000m:=C2=A0=C2=A0 13 Mbit/s=C2=A0=C2=A0(lots=
 of retries)
=C2=A0=C2=A0=C2=A0=C2=A0Dynack:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A058 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Actual distance: 1504m
=C2=A0=C2=A0=C2=A0=C2=A0iperf 60s run avg
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Fixed 12150m:=C2=A0=C2=A031 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0Dynack:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A086 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Fixed 6300m:=C2=A0=C2=A0 55 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0Dynack:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A087 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Fixed 3000m:=C2=A0=C2=A0 67 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0Dynack:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A087 Mbit/s
=C2=A0=C2=A0=C2=A0=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0Signed-off-by: Koen Vandeputte <koen.vandeputte at =
ncentric.com>
---
package/kernel/mac80211/Makefile | 14 +++++++++++++-
1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/package/kernel/mac80211/Makefile b/package/kernel/mac80211/Mak=
efile
index 3c88e451f1..611d5a73d8 100644
--- a/package/kernel/mac80211/Makefile
+++ b/package/kernel/mac80211/Makefile
@@ -57,6 +57,7 @@ PKG_CONFIG_DEPENDS:=3D \
=C2=A0=C2=A0=C2=A0=C2=A0CONFIG_PACKAGE_ATH_DEBUG \
=C2=A0=C2=A0=C2=A0=C2=A0CONFIG_PACKAGE_ATH_DFS \
=C2=A0=C2=A0=C2=A0=C2=A0CONFIG_PACKAGE_ATH_SPECTRAL \
+=C2=A0=C2=A0=C2=A0=C2=A0CONFIG_PACKAGE_ATH_DYNACK \
=C2=A0=C2=A0=C2=A0=C2=A0CONFIG_PACKAGE_B43_DEBUG \
=C2=A0=C2=A0=C2=A0=C2=A0CONFIG_PACKAGE_B43_PIO \
=C2=A0=C2=A0=C2=A0=C2=A0CONFIG_PACKAGE_B43_PHY_G \
@@ -199,6 +200,17 @@ define KernelPackage/ath/config
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0help
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Say Y to enable=
 access to the FFT/spectral data via debugfs.

+=C2=A0=C2=A0=C2=A0=C2=A0config PACKAGE_ATH_DYNACK
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool "Enable Dynack suppor=
t"
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0depends on PACKAGE_kmod-at=
h9k-common
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0help
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Enables suppor=
t for Dynamic ACK estimation, which allows the fastest possible speed
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0at any distanc=
e automatically by increasing/decreasing the max frame ACK time for
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0the most remot=
e station detected.=C2=A0=C2=A0It can be enabled by using iw (iw phy0 set d=
istance auto),
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0or by sending =
the NL80211_ATTR_WIPHY_DYN_ACK flag to mac80211 driver using netlink.
+
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Select this op=
tion if you want to enable this feature
+
=C2=A0=C2=A0 endif
endef

@@ -1630,7 +1642,7 @@ config-$(call config_package,ath) +=3D ATH_CARDS ATH_=
COMMON ATH_REG_DYNAMIC_USER_R
config-$(CONFIG_PACKAGE_ATH_DEBUG) +=3D ATH_DEBUG ATH10K_DEBUG ATH9K_STATIO=
N_STATISTICS
config-$(CONFIG_PACKAGE_ATH_DFS) +=3D ATH9K_DFS_CERTIFIED ATH10K_DFS_CERTIF=
IED
config-$(CONFIG_PACKAGE_ATH_SPECTRAL) +=3D ATH9K_COMMON_SPECTRAL ATH10K_SPE=
CTRAL
-
+config-$(CONFIG_PACKAGE_ATH_DYNACK) +=3D ATH9K_DYNACK
config-$(call config_package,ath9k) +=3D ATH9K
config-$(call config_package,ath9k-common) +=3D ATH9K_COMMON
config-$(CONFIG_TARGET_ar71xx) +=3D ATH9K_AHB


--===============7359744151324040396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7359744151324040396==--
