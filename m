Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B79C43753
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 16:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oyEczn4wFXU2Vd0GGi04rG5G1DhpCV92SQRde2jhZc=; b=FZo1Z+yp4zLTlR
	U3l/cb1FHdAMSPtPbXT9uUNi3idN5FmKtOMDv4nGGTY6/dBqdxwBu1YMO/MGvDLSg8kBRLj4Q+8S8
	8YzGLOH8tT9F1hZLhDX6kn0dE7nRg9+QJyPHv0Kbwk/MUQFBiObIn0kVc9zcNsbjTUK9TxhendxoS
	CDbsTctop3us5nuLVHZopmZ1ix/cA8oNL+Zn6phhtaqi2ZCC8OTsOwYfIVLMlCt8W8cvxoLcBfncN
	miZ+sekucZc7wVu1NKwiuTx4/G5BfMcdGm0rT5p6IyImvfkNzb8dpDAugCO0vBWZzU0OyNf5XNc1L
	gUe+m/eWUIDSVfOqXDGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbR1F-0003Bj-MB; Thu, 13 Jun 2019 14:48:01 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbR14-0003BN-L1
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 14:47:52 +0000
Received: (wp-smtpd smtp.tlen.pl 27315 invoked from network);
 13 Jun 2019 16:41:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1560436869; bh=gBkekKAtF6yq7oyonyddSFVzYn64FS2YOZ5TL6Giaks=;
 h=From:To:Cc:Subject;
 b=d1NW/yCMzTmbO9I7kQyY7VGrj4IfvL6kdccxzEob2x8lDIfs1SILWqN0H6eeqlB4Z
 jM5rPxW1612l2bmeS2JClmyyB5NnV7fRXaQT2Js7mpN0MHEkFEuDstLubKlNV+EBQ/
 mqsreQqoM1V9uxZ+WHqxQcXk9+gtDVS9uK6MdeQo=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 13 Jun 2019 16:41:09 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 13 Jun 2019 16:40:47 +0200
Message-Id: <20190613144047.3472-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190613144047.3472-1-tomek_n@o2.pl>
References: <20190613144047.3472-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: dc48e52c2ab025a7f260a492522263f1
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [sbFF]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_074750_852648_C96B6C2F 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 2/2] kernel: package module for SafeXcel
 crypto engine
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
LnBsPgotLS0KCnYxIC0+IHYyOiBhZGQgcHJvcGVyIGRlcGVuZGVuY2llcyBhbmQgZXh0ZW5kIG1v
ZHVsZSBkZXNjcmlwdGlvbiBpbgpyZXN1bHQgb2YgcmV2aWV3IGJ5IEpvbmFzIEdvcnNraQoKIHBh
Y2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvY3J5cHRvLm1rIHwgMjUgKysrKysrKysrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9wYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL2NyeXB0by5tayBiL3BhY2thZ2Uva2VybmVs
L2xpbnV4L21vZHVsZXMvY3J5cHRvLm1rCmluZGV4IDljYWIwNGM2ZWQuLjJlNTAwZjUxZDcgMTAw
NjQ0Ci0tLSBhL3BhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvY3J5cHRvLm1rCisrKyBiL3Bh
Y2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvY3J5cHRvLm1rCkBAIC0zNTAsNiArMzUwLDMxIEBA
IGVuZGVmCiAkKGV2YWwgJChjYWxsIEtlcm5lbFBhY2thZ2UsY3J5cHRvLWh3LXBhZGxvY2spKQog
CiAKK2RlZmluZSBLZXJuZWxQYWNrYWdlL2NyeXB0by1ody1zYWZleGNlbAorICBUSVRMRTo9IE1W
RUJVIFNhZmVYY2VsIENyeXB0byBFbmdpbmUgbW9kdWxlCisgIERFUEVORFM6PUAhTElOVVhfNF8x
NCBAKFRBUkdFVF9tdmVidV9jb3J0ZXhhNTN8fFRBUkdFVF9tdmVidV9jb3J0ZXhhNzIpIFwKKwkr
a21vZC1jcnlwdG8tYXV0aGVuYyAra21vZC1jcnlwdG8tbWQ1ICtrbW9kLWNyeXB0by1obWFjICtr
bW9kLWNyeXB0by1zaGEyNTYgK2ttb2QtY3J5cHRvLXNoYTUxMgorICBLQ09ORklHOj0gXAorCUNP
TkZJR19DUllQVE9fSFc9eSBcCisJQ09ORklHX0NSWVBUT19ERVZfU0FGRVhDRUwKKyAgRklMRVM6
PSQoTElOVVhfRElSKS9kcml2ZXJzL2NyeXB0by9pbnNpZGUtc2VjdXJlL2NyeXB0b19zYWZleGNl
bC5rbworICBBVVRPTE9BRDo9JChjYWxsIEF1dG9Mb2FkLDkwLGNyeXB0b19zYWZleGNlbCkKKyAg
JChjYWxsIEFkZERlcGVuZHMvY3J5cHRvKQorZW5kZWYKKworZGVmaW5lIEtlcm5lbFBhY2thZ2Uv
Y3J5cHRvLWh3LXNhZmV4Y2VsL2Rlc2NyaXB0aW9uCitNVkVCVSdzIEVJUDk3IGFuZCBFSVAxOTcg
Q3J5cHRvZ3JhcGhpYyBFbmdpbmUgZHJpdmVyIGRlc2lnbmVkIGJ5CitJbnNpZGUgU2VjdXJlLiBU
aGlzIGlzIGZvdW5kIG9uIE1hcnZlbGwgQXJtYWRhIDM3eHgvN2svOGsgU29Dcy4KKworUGFydGlj
dWxhciB2ZXJzaW9uIG9mIHRoZXNlIElQIChFSVAxOTdCIGFuZCBFSVAxOTdEKSByZXF1aXJlIGZp
cm13YXJlLgorVW5mb3J0dW5hdGVseSBpdCdzIG5vdCBmcmVlbHkgYXZhaWxhYmxlIGFuZCBuZWVk
cyBzaWduZWQgTm9uLURpc2Nsb3N1cmUKK0FncmVlbWVudCAoTkRBKSB3aXRoIE1hcnZlbGwuIEZv
ciB0aG9zZSB3aG8gaGF2ZSBzaWduZWQgTkRBIHRoZSBmaXJtd2FyZSBjYW4gYmUKK29idGFpbmVk
IGF0IGh0dHBzOi8vZXh0cmFuZXQubWFydmVsbC5jb20uCitlbmRlZgorCiskKGV2YWwgJChjYWxs
IEtlcm5lbFBhY2thZ2UsY3J5cHRvLWh3LXNhZmV4Y2VsKSkKKworCiBkZWZpbmUgS2VybmVsUGFj
a2FnZS9jcnlwdG8taHctdGFsaXRvcwogICBUSVRMRTo9RnJlZXNjYWxlIGludGVncmF0ZWQgc2Vj
dXJpdHkgZW5naW5lIChTRUMpIGRyaXZlcgogICBERVBFTkRTOj0ra21vZC1jcnlwdG8tbWFuYWdl
ciAra21vZC1jcnlwdG8taGFzaCAra21vZC1yYW5kb20tY29yZSAra21vZC1jcnlwdG8tYXV0aGVu
YyAra21vZC1jcnlwdG8tZGVzCi0tIAoyLjIyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
