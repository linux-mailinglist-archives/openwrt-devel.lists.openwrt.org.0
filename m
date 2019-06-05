Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A252635F45
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 16:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhvjsKt/DCsJj/1Rw/tlaOVU/GzhLLYHQsFFdOFMX/8=; b=r+VntudoafTHj5
	mpwq7lxWj1zBpslEnHttd2M24Blu+I2hEqJagx5bXxaQaI2cdjsIhRULjAII0OLcp0XiFfeudYYdk
	i1NyWJ2/iWOnmLob2Z+aEdL0YpzwdMm+xCCAec90X2CFacOo0aot8v1h+D3AZClXRsHj/NwaVXI7x
	PF2ZQ39Bfe/kwNRTkwm4F7jxXXF8MMyH9hH6amx+Ok+VfwKA0ytfKl/aPTTwFrdTxarao/hGP7RiD
	iN+uWACAwxIuEvC+mSJ40hQF1SjLLndJqXpodHwEp66tUMQD+XGl7gxj1HUvLmjWV2mUyxMMDD5Zn
	bQCIBeM3osJ7ib1VOyPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWxP-0006RU-A2; Wed, 05 Jun 2019 14:32:03 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWxF-0006KG-Eh
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 14:31:57 +0000
Received: (wp-smtpd smtp.tlen.pl 17568 invoked from network);
 5 Jun 2019 16:31:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1559745107; bh=mvWg52vM7NRvJs8DBhkC62KCy4kHE/5jCp5jqnjjGoo=;
 h=From:To:Cc:Subject;
 b=uj7ZOet1FCPu9aQbH9GYx29rWn4mJVJdgxtU1JPtdsHEBuaWhllFG6kyE3DFWSZD7
 i1wyf8TQZUcfIbKaZOKhwfvHqEv3CC7D+v780Y0EpZMc85o4LjQXrM92h8+dJjUHWb
 rJoCLXGPVcO8KcAzX1nvICSiKEBo1SbGmwc1ih3c=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 5 Jun 2019 16:31:47 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Jun 2019 16:31:24 +0200
Message-Id: <20190605143124.7598-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605143124.7598-1-tomek_n@o2.pl>
References: <20190605143124.7598-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 525f5701ee2cbad9c66fd56a68c73cc3
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000004 [0YeU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_073154_618295_F892E673 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] kernel: package module for SafeXcel
 crypto engine
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U3VwcG9ydHMgRUlQOTcgYW5kIEVJUDE5NyBmb3VuZCBvbiBBcm1hZGEgMzd4eCwgN2sgYW5kIDhr
IFNvQ3MuClVuZm9ydHVuYXRlbHkgZmlybXdhcmUgZm9yIEVJUDE5NyBpcyBub3QgZWFzaWx5IG9i
dGFpbmFibGUsIHRoZXJlZm9yZQp0byBub3QgY2F1c2UgbG90IG9mIHVzZXIgcmVxdWVzdHMgZGly
ZWN0ZWQgYXQgT3BlbldydCwgcGFja2FnZSBpdCBhcwptb2R1bGUgd2l0aCBleHBsYW5hdGlvbiB3
aGVyZSB0byBvYnRhaW4gdGhlIGZpcm13YXJlLgoKQ2M6IE1hcmVrIEJlaMO6biA8bWFyZWsuYmVo
dW5AbmljLmN6PgpTaWduZWQtb2ZmLWJ5OiBUb21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19uQG8y
LnBsPgotLS0KIHBhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvY3J5cHRvLm1rIHwgMjggKysr
KysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9jcnlwdG8ubWsgYi9w
YWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL2NyeXB0by5tawppbmRleCA5Y2FiMDRjNmVkLi5l
ZDJhYjZhZWQ3IDEwMDY0NAotLS0gYS9wYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL2NyeXB0
by5taworKysgYi9wYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL2NyeXB0by5tawpAQCAtMzUw
LDYgKzM1MCwzNCBAQCBlbmRlZgogJChldmFsICQoY2FsbCBLZXJuZWxQYWNrYWdlLGNyeXB0by1o
dy1wYWRsb2NrKSkKIAogCitkZWZpbmUgS2VybmVsUGFja2FnZS9jcnlwdG8taHctc2FmZXhjZWwK
KyAgVElUTEU6PSBNVkVCVSBTYWZlWGNlbCBDcnlwdG8gRW5naW5lIG1vZHVsZQorICBERVBFTkRT
Oj1ATElOVVhfNF8xOSBAKFRBUkdFVF9tdmVidV9jb3J0ZXhhNTN8fFRBUkdFVF9tdmVidV9jb3J0
ZXhhNzIpIFwKKwkra21vZC1jcnlwdG8tYXV0aGVuYyAra21vZC1jcnlwdG8tbWQ1CisgIEtDT05G
SUc6PSBcCisJQ09ORklHX0NSWVBUT19BRVM9eSBcCisJQ09ORklHX0NSWVBUT19CTEtDSVBIRVI9
eSBcCisJQ09ORklHX0NSWVBUT19ERVZfU0FGRVhDRUwgXAorCUNPTkZJR19DUllQVE9fSE1BQz15
IFwKKwlDT05GSUdfQ1JZUFRPX0hXPXkgXAorCUNPTkZJR19DUllQVE9fU0hBMjU2PXkgXAorCUNP
TkZJR19DUllQVE9fU0hBNTEyPXkKKyAgRklMRVM6PSQoTElOVVhfRElSKS9kcml2ZXJzL2NyeXB0
by9pbnNpZGUtc2VjdXJlL2NyeXB0b19zYWZleGNlbC5rbworICBBVVRPTE9BRDo9JChjYWxsIEF1
dG9Mb2FkLDkwLGNyeXB0b19zYWZleGNlbCkKKyAgJChjYWxsIEFkZERlcGVuZHMvY3J5cHRvKQor
ZW5kZWYKKworZGVmaW5lIEtlcm5lbFBhY2thZ2UvY3J5cHRvLWh3LXNhZmV4Y2VsL2Rlc2NyaXB0
aW9uCitNVkVCVSdzIEVJUDk3IGFuZCBFSVAxOTcgQ3J5cHRvZ3JhcGhpYyBFbmdpbmUgZHJpdmVy
IGRlc2lnbmVkIGJ5CitJbnNpZGUgU2VjdXJlLiBUaGlzIGlzIGZvdW5kIG9uIE1hcnZlbGwgQXJt
YWRhIDM3eHgvN2svOGsgU29Dcy4KKworUGFydGljdXJhbCB2ZXJzaW9uIG9mIHRoZXNlIElQIChF
SVAxOTdCIGFuZCBFSVAxOTdEKSByZXF1aXJlIGZpcm13YXJlLgorSXQgY2FuIGJlIG9idGFpbmVk
IGF0IGh0dHBzOi8vZXh0cmFuZXQubWFydmVsbC5jb20uCitlbmRlZgorCiskKGV2YWwgJChjYWxs
IEtlcm5lbFBhY2thZ2UsY3J5cHRvLWh3LXNhZmV4Y2VsKSkKKworCiBkZWZpbmUgS2VybmVsUGFj
a2FnZS9jcnlwdG8taHctdGFsaXRvcwogICBUSVRMRTo9RnJlZXNjYWxlIGludGVncmF0ZWQgc2Vj
dXJpdHkgZW5naW5lIChTRUMpIGRyaXZlcgogICBERVBFTkRTOj0ra21vZC1jcnlwdG8tbWFuYWdl
ciAra21vZC1jcnlwdG8taGFzaCAra21vZC1yYW5kb20tY29yZSAra21vZC1jcnlwdG8tYXV0aGVu
YyAra21vZC1jcnlwdG8tZGVzCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
