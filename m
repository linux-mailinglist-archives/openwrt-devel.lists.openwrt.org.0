Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1F6DEC4D
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1XMsUzT7v2PIeH01b8LP7/Lcqk7Ny2dDDhTCukLK3M=; b=jr6dmyXOwFFu/A
	U49pW9vDOJyM1S7syL1w7WffPJ5yz6EqDMy47P2KsOPJZBahmaol+PMlOvdJ0PbrImvDjUugMFkgB
	cp23NF0/DmflMLK6K3DK/Qn9UkZUZScd5z33kpIpoTKQ/lJiMN+rzelqOrrreJlOAh3Fx1eqK5Nuk
	rQiedXA73Ce0LBd1RKHYswVpDyfvjTd6Pmih1DjEn3sihHrJHNKa7qKhjMAlhzO9xcGVGzXY2M8LW
	NEHG4bNsPsPCrZldIz5lrfPxCNa/7lWpB0HMH5xHG7gB33YbKHc7dwZuf8DC8C6h3JQbwXpA01Dle
	nvGd62PFWilgpcmIC4zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWrk-0005yD-91; Mon, 21 Oct 2019 12:32:52 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWrN-0005ky-Rr
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:32:32 +0000
Received: from [192.168.180.1] (port=54474 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1iMWrF-00081I-04
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:32:21 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id E265428021C;
 Mon, 21 Oct 2019 14:32:20 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 14:32:14 +0200
Message-Id: <20191021123214.2252-6-avalentin@marcant.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021123214.2252-1-avalentin@marcant.net>
References: <20191021123214.2252-1-avalentin@marcant.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_053230_066460_79635276 
X-CRM114-Status: UNSURE (   7.77  )
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
Subject: [OpenWrt-Devel] [PATCH 5/5] ath79/zyxel_nbg6716: add macs from
 uboot-env partition
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

U3dpdGNoIE5CRzY3MTYgdG8gdXNlIHRoZSBuZXcgbXRkIG1hYyBwYXJzZXIgZm9yIHUtYm9vdCBl
bnYuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgVmFsZW50aW4gPGF2YWxlbnRpbkBtYXJjYW50Lm5l
dD4KLS0tCiAuLi4vbGludXgvYXRoNzkvZHRzL3FjYTk1NThfenl4ZWxfbmJnNjcxNi5kdHMgfCAx
OSArKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1
NThfenl4ZWxfbmJnNjcxNi5kdHMgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1NThfenl4
ZWxfbmJnNjcxNi5kdHMKaW5kZXggNjc3YWE3YWFjNS4uMGQ0YmM3ZGU0NiAxMDA2NDQKLS0tIGEv
dGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTU4X3p5eGVsX25iZzY3MTYuZHRzCisrKyBiL3Rh
cmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU1OF96eXhlbF9uYmc2NzE2LmR0cwpAQCAtMTMzLDcg
KzEzMyw3IEBACiAJCQkJcmVhZC1vbmx5OwogCQkJfTsKIAotICAgICAgICAgICAgICAgICAgICAg
ICAgcGFydGl0aW9uQDQwMDAwIHsKKyAgICAgICAgICAgICAgICAgICAgICAgIHVib290X2Vudjog
cGFydGl0aW9uQDQwMDAwIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGFiZWwg
PSAidS1ib290LWVudiI7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDww
eDA0MDAwMCAweDAxMDAwMD47CiAgICAgICAgICAgICAgICAgICAgICAgICB9OwpAQCAtMjMxLDcg
KzIzMSw5IEBACiAJc3RhdHVzID0gIm9rYXkiOwogCiAJcGxsLWRhdGEgPSA8MHhhNjAwMDAwMCAw
eDAwMDAwMTAxIDB4MDAwMDE2MTY+OwotCW10ZC1tYWMtYWRkcmVzcyA9IDwmdWJvb3QgMHg1RTI+
OworCW10ZC1tYWMtYWRkcmVzcyA9IDwmdWJvb3RfZW52IDB4MD47CisJbXRkLW1hYy1zZWFyY2gg
PSAiZXRoYWRkcj0iOworCW10ZC1tYWMtYWRkcmVzcy1pbmNyZW1lbnQgPSA8Mj47CiAJcGh5LWhh
bmRsZSA9IDwmcGh5MD47CiAJZml4ZWQtbGluayB7CiAJCXNwZWVkID0gPDEwMDA+OwpAQCAtMjQz
LDggKzI0NSw5IEBACiAJc3RhdHVzID0gIm9rYXkiOwogCiAJcGxsLWRhdGEgPSA8MHgwMzAwMDEw
MSAweDAwMDAwMTAxIDB4MDAwMDE2MTY+OwotCW10ZC1tYWMtYWRkcmVzcyA9IDwmdWJvb3QgMHg1
RTI+OwotCW10ZC1tYWMtYWRkcmVzcy1pbmNyZW1lbnQgPSA8MT47CisJbXRkLW1hYy1hZGRyZXNz
ID0gPCZ1Ym9vdF9lbnYgMHgwPjsKKwltdGQtbWFjLXNlYXJjaCA9ICJldGhhZGRyPSI7CisJbXRk
LW1hYy1hZGRyZXNzLWluY3JlbWVudCA9IDwzPjsKIAlwaHktaGFuZGxlID0gPCZwaHkxPjsKIAlm
aXhlZC1saW5rIHsKIAkJc3BlZWQgPSA8MTAwMD47CkBAIC0yNjAsOCArMjYzLDggQEAKICZ3bWFj
IHsKIAlzdGF0dXMgPSAib2theSI7CiAJbXRkLWNhbC1kYXRhID0gPCZhcnQgMHgxMDAwPjsKLQlt
dGQtbWFjLWFkZHJlc3MgPSA8JnVib290IDB4NUUyPjsKLQltdGQtbWFjLWFkZHJlc3MtaW5jcmVt
ZW50ID0gPDM+OworCW10ZC1tYWMtYWRkcmVzcyA9IDwmdWJvb3RfZW52IDB4MD47CisJbXRkLW1h
Yy1zZWFyY2ggPSAiZXRoYWRkcj0iOwogfTsKIAogJnBjaWUxIHsKQEAgLTI3MCw2ICsyNzMsMTAg
QEAKIAl3aWZpQDAsMCB7CiAJCWNvbXBhdGlibGUgPSAicWNvbSxhdGgxMGsiOwogCQlyZWcgPSA8
MCAwIDAgMCAwPjsKKwkJbXRkLW1hYy1hZGRyZXNzID0gPCZ1Ym9vdF9lbnYgMHgwPjsKKwkJbXRk
LW1hYy1zZWFyY2ggPSAiZXRoYWRkcj0iOworCQltdGQtbWFjLWFkZHJlc3MtaW5jcmVtZW50ID0g
PDE+OworCQlxY29tLGF0aDEway1jYWxpYnJhdGlvbi12YXJpYW50ID0gIlp5WEVMLU5CRzY3MTYi
OwogCX07CiB9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
