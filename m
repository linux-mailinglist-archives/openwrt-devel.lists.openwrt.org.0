Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0347813BD5B
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 11:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l2nbGs++Cb+iRHv/ZemgnpjXXUBQsXmHs0lZ3mAar3E=; b=sNujDoy3nCiBEh
	yTTHhYqE3L8OaUSXer5Vh85n2ZWzreGvw82HTuRiUVOUHD/JnfmccJhXL/QvgKE4Ywys0cN/3fCZ2
	RYymsySGjSNavrRTsyCjBZoazkXAHa0IlTDmwdj+kHr6Dd3qbZhNBO6Z3mNU7GvRBZseyKZiF+J86
	lvBLeWvBt0y8HfNgFJTkmcTXiUwprJpHFYWiem2OZ5vqQgom56NtOsnW2110MW1ThDqJLTkbERvWV
	Lk8dLb/8kH8QjBBfuEV/bAyAHpM9C0IbNpjFdztgdMrTjXiOwOFLgVphuFEfFz3DkB0dti6VUA3Pu
	IvySYt7tZ6vK67c8o6cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfsl-0005vY-SZ; Wed, 15 Jan 2020 10:26:39 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfsa-0005um-Td
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 10:26:33 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B128C66D3;
 Wed, 15 Jan 2020 11:26:24 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 1c130f15;
 Wed, 15 Jan 2020 11:26:14 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Jan 2020 11:26:18 +0100
Message-Id: <20200115102618.7410-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_022629_108574_FA1F24EE 
X-CRM114-Status: UNSURE (   8.33  )
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
Subject: [OpenWrt-Devel] [PATCH fstools] libblkid-tiny: fix f2fs labels by
 increasing label buffer
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

ZjJmcyBtYXggbGFiZWwgbGVuZ3RoIGlzIDEwMjRCICg1MTIgKiB1aW50MTZfdCkgd2hpY2ggaXMg
d2F5IGFib3ZlCmN1cnJlbnQgMjU2QiB1c2VkIGluIGBzdHJ1Y3QgYmxraWRfc3RydWN0X3Byb2Jl
YCB3aGljaCByZW5kZXJzIGxhYmVscyBvbgpmMmZzIHN5c3RlbSB1bnVzYWJsZToKCiAkIG1rZnMu
ZjJmcyAtbCBkcml2ZSAvZGV2L3NkYTEKICQgYmxvY2sgaW5mbyAvZGV2L3NkYTEKIGxhYmVsIGJ1
ZmZlciB0b28gc21hbGwgMTAyNCA+IDI1NQoKU28gaW5jcmVhc2UgdGhlIGxhYmVsIGJ1ZmZlciBh
Z2FpbiBpbiBvcmRlciB0byBtYWtlIGVub3VnaCBzcGFjZSBmb3IKZjJmcyBsYWJlbHMuCgpGaXhl
czogRlMjMjczNQpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgot
LS0KIGxpYmJsa2lkLXRpbnkvbGliYmxraWQtdGlueS5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbGliYmxraWQtdGlu
eS9saWJibGtpZC10aW55LmggYi9saWJibGtpZC10aW55L2xpYmJsa2lkLXRpbnkuaAppbmRleCBm
MDkyMmI1ZjdhZWIuLmU0NzZlN2IyYzZlZiAxMDA2NDQKLS0tIGEvbGliYmxraWQtdGlueS9saWJi
bGtpZC10aW55LmgKKysrIGIvbGliYmxraWQtdGlueS9saWJibGtpZC10aW55LmgKQEAgLTU2LDcg
KzU2LDcgQEAgc3RydWN0IGJsa2lkX3N0cnVjdF9wcm9iZQogCWludAllcnI7CiAJY2hhcglkZXZb
MzJdOwogCWNoYXIJdXVpZFs2NF07Ci0JY2hhcglsYWJlbFsyNTZdOworCWNoYXIJbGFiZWxbMTAy
NV07CiAJY2hhcgl2ZXJzaW9uWzY0XTsKIAogCXN0cnVjdCBsaXN0X2hlYWQJYnVmZmVyczsJLyog
bGlzdCBvZiBidWZmZXJzICovCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
