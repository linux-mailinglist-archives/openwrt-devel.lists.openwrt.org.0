Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549D3DEC4F
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5RRBifPRThqAXw+Ui1vImAAOkLrLbHVqf7daYWAx7M=; b=PUxvmaITC2SEyP
	4J150Og2POmWCK2QmKl+OwN8pyfi9uNDoly1hlWnvaWUksHd3fNOXEbNkWvzsAMJfOJ7By5knQd9H
	iyeElFevmneLx00P72MfQO77p/H2q/RS0+dXsQsO5RV0jEb7OmhqHR1QM+NSmUbBJWR1KX2J67pGy
	xeBVBN8m8GO38+0LXRJ98Zxd3QAFu8Yq5odJyfIuDYMBG+clTe3sssFmKq9XBCbQnj0efgdeTJWJi
	KuhT+CTADeSfdaRNAkY/k5hOaT0zHUevuzll+QTpr6bNtEx+iJYWjHghyYApI/RcLuzVOEpMKCuSt
	1c8Pl8iOekQBRcItWAhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWs4-0006Vr-Vl; Mon, 21 Oct 2019 12:33:12 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWrN-0005kx-Rf
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:32:33 +0000
Received: from [192.168.180.1] (port=54462 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1iMWrE-00081F-2O
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:32:20 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 9E9AF2804A3;
 Mon, 21 Oct 2019 14:32:20 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 14:32:11 +0200
Message-Id: <20191021123214.2252-3-avalentin@marcant.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021123214.2252-1-avalentin@marcant.net>
References: <20191021123214.2252-1-avalentin@marcant.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_053230_068290_187A77D1 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/5] ar71xx: fix bug in NBG6716
 kernelpackaging, add firmware partition allowing ath79 update
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
Cc: avalentin@marcant.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

LUZpeCB0aGUga2VybmVsIGltYWdlIGdlbmVyYXRpb24gKG1vcmUgcm9idXN0KQotQWRkIGEgZmly
bXdhcmUgcGFydGl0aW9uIHRhYmxlIGFsbG93aW5nIGVhc3kgdXBncmFkZSB0byBhdGg3OQoKU2ln
bmVkLW9mZi1ieTogQW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+Ci0tLQog
dGFyZ2V0L2xpbnV4L2FyNzF4eC9pbWFnZS9sZWdhY3kubWsgfCA2ICsrKystLQogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJn
ZXQvbGludXgvYXI3MXh4L2ltYWdlL2xlZ2FjeS5tayBiL3RhcmdldC9saW51eC9hcjcxeHgvaW1h
Z2UvbGVnYWN5Lm1rCmluZGV4IDM2M2UwOTU2YzcuLjEwNzJkZmI5OTkgMTAwNjQ0Ci0tLSBhL3Rh
cmdldC9saW51eC9hcjcxeHgvaW1hZ2UvbGVnYWN5Lm1rCisrKyBiL3RhcmdldC9saW51eC9hcjcx
eHgvaW1hZ2UvbGVnYWN5Lm1rCkBAIC0yNzMsNyArMjczLDcgQEAgdGV3ODIzZHJ1X210ZGxheW91
dD1tdGRwYXJ0cz1zcGkwLjA6MTkyayh1LWJvb3Qpcm8sNjRrKG52cmFtKXJvLDE1Mjk2ayhmaXJt
d2FyZSkKIHduZHI0MzAwX210ZGxheW91dD1tdGRwYXJ0cz1hcjkzNHgtbmZjOjI1NmsodS1ib290
KXJvLDI1NmsodS1ib290LWVudilybywyNTZrKGNhbGRhdGEpcm8sNTEyayhwb3QpLDIwNDhrKGxh
bmd1YWdlKSw1MTJrKGNvbmZpZyksMzA3MmsodHJhZmZpY19tZXRlciksMjA0OGsoa2VybmVsKSwy
MzU1MmsodWJpKSwyNTYwMGtAMHg2YzAwMDAoZmlybXdhcmUpLDI1NmsoY2FsZGF0YV9iYWNrdXAp
LC0ocmVzZXJ2ZWQpCiB6Y24xNTIzaF9tdGRsYXlvdXQ9bXRkcGFydHM9c3BpMC4wOjI1NmsodS1i
b290KXJvLDY0ayh1LWJvb3QtZW52KXJvLDYyMDhrKHJvb3RmcyksMTQ3Mmsoa2VybmVsKSw2NGso
Y29uZmlndXJlKXJvLDY0ayhtZmcpcm8sNjRrKGFydClybyw3Njgwa0AweDUwMDAwKGZpcm13YXJl
KQogbXluZXRfcmV4dF9tdGRsYXlvdXQ9bXRkcGFydHM9c3BpMC4wOjI1NmsodS1ib290KXJvLDc4
MDhrKGZpcm13YXJlKSw2NGsobnZyYW0pcm8sNjRrKEFSVClybwotenl4X25iZzY3MTZfbXRkbGF5
b3V0PW10ZHBhcnRzPXNwaTAuMDoyNTZrKHUtYm9vdClybyw2NGsoZW52KXJvLDY0ayhSRmRhdGEp
cm8sLShuYnUpO2FyOTM0eC1uZmM6MjA0OGsoenl4ZWxfcmZzZCksMjA0OGsocm9tZCksMTAyNGso
aGVhZGVyKSwyMDQ4ayhrZXJuZWwpLC0odWJpKQorenl4X25iZzY3MTZfbXRkbGF5b3V0PW10ZHBh
cnRzPXNwaTAuMDoyNTZrKHUtYm9vdClybyw2NGsoZW52KXJvLDY0ayhSRmRhdGEpcm8sLShuYnUp
O2FyOTM0eC1uZmM6MjA0OGtAMHgwKHp5eGVsX3Jmc2QpLDIwNDhrQDB4MjAwMDAwKHJvbWQpLDEw
MjRrQDB4NDAwMDAwKGhlYWRlciksMjA0OGtAMHg1MDAwMDAoa2VybmVsKSwxMjU5NTJrQDB4NTAw
MDAwKGZpcm13YXJlKSwtQDB4NzAwMDAwKHViaSkKIAogZGVmaW5lIEltYWdlL0J1aWxkS2VybmVs
CiAJY3AgJChLRElSKS92bWxpbnV4LmVsZiAkKFZNTElOVVgpLmVsZgpAQCAtNzcxLDEzICs3NzEs
MTUgQEAgZGVmaW5lIEltYWdlL0J1aWxkL1p5WEVMCiAJZmk7IGZpCiBlbmRlZgogCisKKyMgYXR0
ZW50aW9uOiBvbmx5IHpsaWIgY29tcHJlc3Npb24gaXMgYWxsb3dlZCBmb3IgdGhlIGJvb3QgZnMK
IGRlZmluZQlJbWFnZS9CdWlsZC9aeVhFTE5BTkQvYnVpbGRrZXJuZWwKIAkkKGV2YWwga2VybmVs
c2l6ZT0kKGNhbGwgbXRkcGFydHNpemUsa2VybmVsLCQoNSkpKQogCSQoY2FsbCBNa3VJbWFnZUx6
bWEsJCgyKSwkKDMpICQoNSkgJCg2KSkKIAlta2RpciAtcCAkKEtESVJfVE1QKS8kKDIpL2ltYWdl
L2Jvb3QKIAljcCAkKEtESVJfVE1QKS92bWxpbnV4LSQoMikudUltYWdlICQoS0RJUl9UTVApLyQo
MikvaW1hZ2UvYm9vdC92bWxpbnV4Lmx6bWEudUltYWdlCiAJJChTVEFHSU5HX0RJUl9IT1NUKS9i
aW4vbWtmcy5qZmZzMiBcCi0JCS0tcGFkPSQoa2VybmVsc2l6ZSkgLS1iaWctZW5kaWFuIC0tc3F1
YXNoLXVpZHMgLXYgLWUgMTI4S2lCIFwKKwkJLS1wYWQ9JChrZXJuZWxzaXplKSAtLWJpZy1lbmRp
YW4gLS1zcXVhc2gtdWlkcyAtdiAtZSAxMjhLaUIgLXEgLWYgLW4gLXggbHptYSAteCBydGltZSBc
CiAJCS1vICQoS0RJUl9UTVApLyQoMikta2VybmVsLmpmZnMyIFwKIAkJLWQgJChLRElSX1RNUCkv
JCgyKS9pbWFnZSBcCiAJCTI+JjEgMT4vZGV2L251bGwgfCBhd2sgJy9eLiskJC8nCi0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
