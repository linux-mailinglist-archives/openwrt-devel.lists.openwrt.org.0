Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BD545B2D
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 13:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hy+Cj8XMpIuvs6FFeSmcUZMG1F01maiA1KPr/6+qgQ=; b=hlLTWzTzG6l5Cq
	iH1UafEW+oBWR6or82CBec5RVx3uPB1YNumRBqwluL8Bv/UYQau4SxDpwfueY3ldqSYxm+lEap/VB
	uTSN7uwGi3ep+UpgnIz63HtctFi2Ngb1x1cG9xsVYG3SNUemth2N195WxCYaMpCSJzMQPdrLa1kOE
	ZESrJOP24Yxo57JVLbIyucTOaw5G3UpT1OI2RFaMscA36hKlibTeuebBIXL4iiUIxMmG8E6bnfUf4
	BRnCOjgIsdcmaL7ZLHLwULjmwiKfF49OcCTL7aTtvwyhCtfYk/sAKDbtav54irXiF0513ifgJrqVQ
	zHTDarS+ajJGBcR2IY9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbk6g-0008Sd-Gv; Fri, 14 Jun 2019 11:10:54 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbk5w-0006XC-2U
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 11:10:11 +0000
Received: from [192.168.180.1] (port=48382 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1hbk5g-0003tj-1t
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 13:09:52 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 78FC82803C9;
 Fri, 14 Jun 2019 13:09:52 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 14 Jun 2019 13:09:45 +0200
Message-Id: <20190614110947.10540-2-avalentin@marcant.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190614110947.10540-1-avalentin@marcant.net>
References: <20190614110947.10540-1-avalentin@marcant.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_041008_303295_91579164 
X-CRM114-Status: UNSURE (   8.48  )
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
Subject: [OpenWrt-Devel] [PATCH 1/3] netifd: fix xfrm interface deletion and
 standardize netlink call
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
Cc: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

LXhmcm0gaW50ZXJmYWNlcyB3ZXJlIGRlbGV0ZWQgYmVmb3JlCi11c2Ugc3RhbmRhcmQgcGFyYW1l
dGVycyBmb3IgeGZybSBpbnRlcmZhY2UgY3JlYXRlZAoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIFZh
bGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+Ci0tLQogc3lzdGVtLWxpbnV4LmMgfCA1ICsr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3N5c3RlbS1saW51eC5jIGIvc3lzdGVtLWxpbnV4LmMKaW5kZXggNmU1Y2EyOC4u
ZjYzYWViMiAxMDA2NDQKLS0tIGEvc3lzdGVtLWxpbnV4LmMKKysrIGIvc3lzdGVtLWxpbnV4LmMK
QEAgLTI4ODMsNyArMjg4Myw3IEBAIHN0YXRpYyBpbnQgc3lzdGVtX2FkZF94ZnJtX3R1bm5lbChj
b25zdCBjaGFyICpuYW1lLCBjb25zdCBjaGFyICpraW5kLAogCXN0cnVjdCBibG9iX2F0dHIgKmN1
cjsKIAlpbnQgcmV0ID0gMDsKIAotCW5sbSA9IG5sbXNnX2FsbG9jX3NpbXBsZShSVE1fTkVXTElO
SywgTkxNX0ZfUkVRVUVTVCB8IE5MTV9GX0FDSyB8IE5MTV9GX0NSRUFURSB8IE5MTV9GX0VYQ0wp
OworCW5sbSA9IG5sbXNnX2FsbG9jX3NpbXBsZShSVE1fTkVXTElOSywgTkxNX0ZfUkVRVUVTVCB8
IE5MTV9GX1JFUExBQ0UgfCBOTE1fRl9DUkVBVEUpOwogCWlmICghbmxtKQogCQlyZXR1cm4gLTE7
CiAKQEAgLTMyMTYsNyArMzIxNiw4IEBAIHN0YXRpYyBpbnQgX19zeXN0ZW1fZGVsX2lwX3R1bm5l
bChjb25zdCBjaGFyICpuYW1lLCBzdHJ1Y3QgYmxvYl9hdHRyICoqdGIpCiAJaWYgKCFzdHJjbXAo
c3RyLCAiZ3JlaXAiKSB8fCAhc3RyY21wKHN0ciwgImdyZXRhcGlwIikgfHwKIAkgICAgIXN0cmNt
cChzdHIsICJncmVpcDYiKSB8fCAhc3RyY21wKHN0ciwgImdyZXRhcGlwNiIpIHx8CiAJICAgICFz
dHJjbXAoc3RyLCAidnRpaXAiKSB8fCAhc3RyY21wKHN0ciwgInZ0aWlwNiIpIHx8Ci0JICAgICFz
dHJjbXAoc3RyLCAidnhsYW4iKSB8fCAhc3RyY21wKHN0ciwgInZ4bGFuNiIpKQorCSAgICAhc3Ry
Y21wKHN0ciwgInZ4bGFuIikgfHwgIXN0cmNtcChzdHIsICJ2eGxhbjYiKSB8fAorCSAgICAhc3Ry
Y21wKHN0ciwgInhmcm0iKSkKIAkJcmV0dXJuIHN5c3RlbV9saW5rX2RlbChuYW1lKTsKIAllbHNl
CiAJCXJldHVybiB0dW5uZWxfaW9jdGwobmFtZSwgU0lPQ0RFTFRVTk5FTCwgTlVMTCk7Ci0tIAoy
LjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
