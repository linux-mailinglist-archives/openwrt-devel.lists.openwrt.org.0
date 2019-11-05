Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0A2EF218
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kypzxfI58QXi+vqoUrFMVggNj7NHCdtfAdLiZYLbHFM=; b=eAdsvoXPZ0Mbs0
	qc4Rns7ILehXxIrG3S5p0Mx7KB2Zvhjr/omvwoi8YS2I8Eklaq+APPY7kCXOBT3NdhgBAhDIF30Ej
	+daaa3fFaL5P2Ct5WLzRAPmgdBmjRrc2AgGdTFPgnxkBsAoKiZP1Ti/WN+inojwK+jnJtjNB+nNvv
	tdxIAhcirNxApjC0JhgpcopnL685MHd1ys8qa3CUj9u4k6ywId9sXUc9o+lFCkXN+OADMlg50PWD6
	si0q8Cb3ihjRiH34VvYmD7tkwdaR7v71VPruzBsWQc8tE/pb6lLTdvdwNHFtHPSDaEqb7hzEiJiLI
	+F0LvVyrkzUS4Ga5YQeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmsI-0001tL-7P; Tue, 05 Nov 2019 00:39:10 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqQ-00088I-84
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:16 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7D7B14D87;
 Tue,  5 Nov 2019 01:37:12 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 30053ad5;
 Tue, 5 Nov 2019 01:37:02 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:50 +0100
Message-Id: <20191105003657.16540-12-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163714_453179_6EC55AD5 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uci 11/18] lua: fix copy&paste in error
 string
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

V2hlbiB1Y2lfc2V0X2NvbmZkaXIgZmFpbHMgd2Ugc2hvdWxkIHNheSBzby4KClNpZ25lZC1vZmYt
Ynk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogbHVhL3VjaS5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvbHVhL3VjaS5jIGIvbHVhL3VjaS5jCmluZGV4IGY0ZGNlODliN2M5Zi4uMzIzZjgxYTY4YzE3
IDEwMDY0NAotLS0gYS9sdWEvdWNpLmMKKysrIGIvbHVhL3VjaS5jCkBAIC0xMDA2LDcgKzEwMDYs
NyBAQCB1Y2lfbHVhX2N1cnNvcihsdWFfU3RhdGUgKkwpCiAJCWNhc2UgMToKIAkJCWlmIChsdWFf
aXNzdHJpbmcoTCwgMSkgJiYKIAkJCQkodWNpX3NldF9jb25mZGlyKCp1LCBsdWFMX2NoZWNrc3Ry
aW5nKEwsIDEpKSAhPSBVQ0lfT0spKQotCQkJCXJldHVybiBsdWFMX2Vycm9yKEwsICJVbmFibGUg
dG8gc2V0IHNhdmVkaXIiKTsKKwkJCQlyZXR1cm4gbHVhTF9lcnJvcihMLCAiVW5hYmxlIHRvIHNl
dCBjb25mZGlyIik7CiAJCQlicmVhazsKIAkJZGVmYXVsdDoKIAkJCWJyZWFrOwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
