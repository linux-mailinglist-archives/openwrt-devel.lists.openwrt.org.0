Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71889D3B73
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 10:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvffOhu+xnqYgMY8bAJbrAeWTUIeHm1piwzY0af3Wfs=; b=HibHcn/+i9kCND
	oHWNfYipYa9XQSQB761SDvOO7XreVXspKk5wXttUr+mTlmEG8wDHDpv3o6L3axTVJ5GKB0OhL/akw
	5ZmxC1hOsDcGiHPs66DW+UvMZmpw6cDIrPT6qeMfTqQinV+2xvlXvsOHoK0SgvBghtT4T07KZGP8J
	1qk08rWREnRKnwMpFl+05W/EHl1B29nkfpx/u9diegaLTsY5NSM0DeeBwlyLm4YbVNZ0ei9dFV394
	ReAoJnxox5SYfIU+cpYBVm7mt0TOIYD3wxQpbNXBeA3XQ0YECKhJWC89CiRZn0YesU91JMVwwGuEc
	oVtd8OUmK4rvluteABXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqW0-0004Mf-Sv; Fri, 11 Oct 2019 08:43:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqVA-0003fL-74
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 08:42:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3354C3FEB;
 Fri, 11 Oct 2019 10:42:17 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id fb68e7d0;
 Fri, 11 Oct 2019 10:42:07 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 11 Oct 2019 10:42:01 +0200
Message-Id: <20191011084204.19790-2-ynezz@true.cz>
In-Reply-To: <20191011084204.19790-1-ynezz@true.cz>
References: <20191011084204.19790-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014220_414749_E52D4977 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH urngd 1/4] Add initial GitLab CI support
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

VXNlcyBjdXJyZW50bHkgcHJvb2Ytb2YtY29uY2VwdCBvcGVud3J0LWNpWzFdIGluIG9yZGVyIHRv
OgoKICogaW1wcm92ZSB0aGUgcXVhbGl0eSBvZiB0aGUgY29kZWJhc2UgaW4gdmFyaW91cyBhcmVh
cwogKiBkZWNyZWFzZSBjb2RlIHJldmlldyB0aW1lIGFuZCBoZWxwIG1lcmdpbmcgY29udHJpYnV0
aW9ucyBmYXN0ZXIKICogZ2V0IGF1dG9tYWdpYyBmZWVkYmFjayBsb29wIG9uIHZhcmlvdXMgcGxh
dGZvcm1zIGFuZCB0b29scwogICAtIG91dCBvZiB0cmVlIGJ1aWxkIHdpdGggT3BlbldydCBTREsg
b24gZm9sbG93aW5nIHRhcmdldHM6CiAgICAgKiBhdGg3OS1nZW5lcmljCiAgICAgKiBpbXg2LWdl
bmVyaWMKICAgICAqIG1hbHRhLWJlCiAgICAgKiBtdmVidS1jb3J0ZXhhNTMKICAgLSBvdXQgb2Yg
dHJlZSBuYXRpdmUgYnVpbGQgb24geDg2LzY0IHdpdGggR0NDICh2ZXJzaW9ucyA3LCA4LCA5KSBh
bmQgQ2xhbmcgOQogICAtIG91dCBvZiB0cmVlIG5hdGl2ZSB4ODYvNjQgc3RhdGljIGNvZGUgYW5h
bHlzaXMgd2l0aCBjcHBjaGVjayBhbmQKICAgICBzY2FuLWJ1aWxkIGZyb20gQ2xhbmcgOQoKMS4g
aHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtY2kvCgpTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIC5naXRsYWItY2kueW1sIHwgNyArKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgLmdp
dGxhYi1jaS55bWwKCmRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1s
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uOWM5ZjAwNDljMjBmCi0t
LSAvZGV2L251bGwKKysrIGIvLmdpdGxhYi1jaS55bWwKQEAgLTAsMCArMSw3IEBACit2YXJpYWJs
ZXM6CisgIENJX1RBUkdFVF9CVUlMRF9ERVBFTkRTOiB1cm5nZAorICBHSVRfU1VCTU9EVUxFX1NU
UkFURUdZOiByZWN1cnNpdmUKKworaW5jbHVkZToKKyAgLSByZW1vdGU6IGh0dHBzOi8vZ2l0bGFi
LmNvbS95bmV6ei9vcGVud3J0LWNpL3Jhdy9tYXN0ZXIvb3BlbndydC1jaS9naXRsYWIvbWFpbi55
bWwKKyAgLSByZW1vdGU6IGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0LWNpL3Jhdy9t
YXN0ZXIvb3BlbndydC1jaS9naXRsYWIvcGlwZWxpbmUueW1sCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
