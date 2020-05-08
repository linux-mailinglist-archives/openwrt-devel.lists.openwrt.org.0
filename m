Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4E81C9FDD
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 May 2020 02:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEwiI7zFmidYHRFoPnxFJaRYIltg/3cweIq3BSrKVLA=; b=ViqhBAs0N1SRR/
	KFSetdaDWZPG0DlMWpd7BGVuZKnCvWwtP+cFpfNUdcBz3DECPYAg633gDTA38cDMxaWEmBUlBsBjY
	kou8GHyEUMFSrkUJ+xAR92t6qMhW7H4MiD/+Xmx3c6g9QGygfuhLCPiUPMT3Sz6Du6mOhawxXfnOE
	4Ttc36d99Z7HZFEzdHv+y4hBR7GSD3S9njyCwVZfo3J4U0XqeWmw6na9PUoGyifDoEfDNCxCqmvGn
	rpS/+RFk7kms2/M/S+ahiJ3XIPSEt8aQPCr3nXXrK/MFtQ231lbaa1ExXj8tAdXsC8iXzLcDj4Rw/
	d+T2ypx/n0+/0iEgXN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWrLn-0003AZ-6O; Fri, 08 May 2020 00:58:51 +0000
Received: from smtprelay08.ispgateway.de ([134.119.228.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWrLg-00039R-2T
 for openwrt-devel@lists.openwrt.org; Fri, 08 May 2020 00:58:45 +0000
Received: from [82.207.205.5] (helo=orange.fritz.box)
 by smtprelay08.ispgateway.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 (envelope-from <me@irrelefant.net>)
 id 1jWrLS-0006lJ-RK; Fri, 08 May 2020 02:58:30 +0200
From: =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <me@irrelefant.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 May 2020 02:58:25 +0200
Message-Id: <20200508005825.749631-2-me@irrelefant.net>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200508005825.749631-1-me@irrelefant.net>
References: <20200508005825.749631-1-me@irrelefant.net>
MIME-Version: 1.0
X-Df-Sender: bWVAaXJyZWxlZmFudC5uZXQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_175844_113719_D87BE911 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [134.119.228.98 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [134.119.228.98 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH procd 2/2] jail: unnamed jails can not have
 netns (fix segfault)
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
Cc: =?UTF-8?q?Leonardo=20M=C3=B6rlein?= <me@irrelefant.net>,
 daniel@makrotopia.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogTGVvbmFyZG8gTcO2cmxlaW4gPG1lQGlycmVsZWZhbnQubmV0PgotLS0K
IGphaWwvamFpbC5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvamFpbC9qYWlsLmMgYi9qYWlsL2phaWwuYwppbmRleCA2N2Q0Y2FkLi5hNTJj
MjY0IDEwMDY0NAotLS0gYS9qYWlsL2phaWwuYworKysgYi9qYWlsL2phaWwuYwpAQCAtODQxLDYg
Kzg0MSwxMCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCiAJCX0KIAogCQlpZiAo
b3B0cy5uYW1lc3BhY2UgJiBDTE9ORV9ORVdORVQpIHsKKwkJCWlmICghb3B0cy5uYW1lKSB7CisJ
CQkJRVJST1IoIm5ldG5zIG5lZWRzIGEgbmFtZWQgamFpbFxuIik7CisJCQkJcmV0dXJuIC0xOwor
CQkJfQogCQkJbmV0bnNfZmQgPSBuZXRuc19vcGVuX3BpZChqYWlsX3Byb2Nlc3MucGlkKTsKIAkJ
CW5ldG5zX3VwZG93bihqYWlsX3Byb2Nlc3MucGlkLCB0cnVlKTsKIAkJfQotLSAKMi4yNi4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
