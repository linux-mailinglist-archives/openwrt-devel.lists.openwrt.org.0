Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424BC181AC0
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 15:06:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x5yy4+GuwOi5WBpjDSyUeNiBy/1gc+mdhrMdf8O504w=; b=Mi2fIH36FZKhM4
	qTbihwnrN0AjEgwdXmAcNA+tbfnj+QzZs8ZERblBWQPaT82aa5qhMhIwAjJKAKhsllEjZjqS8tBYs
	4pRp5pyishNj/m8HuZ2Sjiamk4mhe0qYXiLi7c8yxB7H/CYoIff2+uJsqSdKIRiinp0wxP+66TkfO
	veP/1XMAMQyrWf0rzvHZ2TlTzF1FQY/2XFS6QTAbVYXRhp/B+DFZWV/iJjBGZVzSiiL5drtMkZdeJ
	FkyjGD7bSwQDj+NOAaQPArCvWg5vWkJo07eNRi3ir6lu4mSO+S08WBULJH9QrsEdC+lNniiCuCtAm
	aVvc9oegDANANLma/jTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1zj-0005EY-9r; Wed, 11 Mar 2020 14:05:59 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1za-0005Dh-Rq
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 14:05:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1BE533A36;
 Wed, 11 Mar 2020 15:05:45 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 169dce4f;
 Wed, 11 Mar 2020 15:05:32 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Mar 2020 15:05:41 +0100
Message-Id: <20200311140541.18863-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_070551_050885_4E070439 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] x86: switch to 5.4 kernel
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2VlbXMgdG8gYmUgd29ya2luZyBmaW5lIG9uIGFwdTIgYW5kIFFFTVUsIGl0J3MgOTkuOSUgdXBz
dHJlYW0gc3R1ZmYKYW55d2F5LiBMZXRzIHN0YXJ0IHdpZGVyIHVzZXJiYXNlIHRlc3RpbmcuCgpT
aWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHRhcmdldC9s
aW51eC94ODYvTWFrZWZpbGUgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgveDg2L01ha2VmaWxlIGIv
dGFyZ2V0L2xpbnV4L3g4Ni9NYWtlZmlsZQppbmRleCAyMGE0MTUzODJkMmEuLjI5NjBmZThhMTUz
ZCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3g4Ni9NYWtlZmlsZQorKysgYi90YXJnZXQvbGlu
dXgveDg2L01ha2VmaWxlCkBAIC0xMyw3ICsxMyw3IEBAIEZFQVRVUkVTOj1zcXVhc2hmcyBleHQ0
IHZkaSB2bWRrIHBjbWNpYSB0YXJneiBmcHUKIFNVQlRBUkdFVFM6PWdlbmVyaWMgbGVnYWN5IGdl
b2RlIDY0CiBNQUlOVEFJTkVSOj1GZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+CiAKLUtFUk5F
TF9QQVRDSFZFUjo9NC4xOQorS0VSTkVMX1BBVENIVkVSOj01LjQKIEtFUk5FTF9URVNUSU5HX1BB
VENIVkVSOj01LjQKIAogS0VSTkVMTkFNRTo9YnpJbWFnZQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
