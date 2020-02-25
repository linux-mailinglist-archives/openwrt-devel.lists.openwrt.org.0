Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7448116B86C
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 05:12:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:To:
	Message-Id:Date:From:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OppVlz/dvC0hxK/0DguCZl/fSPrSbCprdTZBthXOz4s=; b=VLQ
	4ZOIt6T5P87ULa4behIKNc1bPNGGTYHmuloLptRoE/e2JiEpJFSuuaDP+Lqf2XS3qGqKi7B3SlmNM
	q6+jXGyQYN5vCx3YGdcQPIrcjl47eTKQKKH9N1F1opTMTtY5QbI7G4UuFEyFc3gZVM6omUN0Zulik
	Vv7FX3ocZbHBMfXpG6pxY6hViCweMWV3l68qyQGKzdfXDXwF6tY3bGLE6R8onh1+tKNjwGF5zD8C/
	397Un+mOY6uX02i6wq74+uVp1xTNTthDnTuBq8+svSwbHb/wO4mknYPhWPnzgNN84Cta9WesZ3+Se
	HDsNSs5WxEWuUedJ9mA1migfqUhtrUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6RaB-0002j9-Ov; Tue, 25 Feb 2020 04:12:31 +0000
Received: from an53.mxout.mta3.net ([192.99.26.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Ra5-0002hi-49
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 04:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=rootowels.space; s=api; c=relaxed/simple; 
 t=1582603930;
 h=from:date:subject:reply-to:to:list-unsubscribe:mime-version; 
 bh=XAawbcarrkmmGZYa7Z7+kBHuTzwuiddLIZVjGBz6PkE=;
 b=Xjo5VM2jvx9Is2n0B9MxTq5zOV8noHLpCSQ/1EnNHjW49FdB8cGWXHl/C8i73j1IhxKyMtC0x2s
 dVAJHfB432mlNfaBBHUVPv+7HuH9e8EvSsiRsubypJlXzbvC63NQlOi9K/GskaVpMWwWOPEaGehBa
 M/oD+4JoasJdZ2dS50I=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1582603930;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=XAawbcarrkmmGZYa7Z7+kBHuTzwuiddLIZVjGBz6PkE=;
 b=Cf70e3dD6FkjGzhUz/5BrsAm6sf8qNaGpJTB9RkXz5SyLD2pgyNqV94Xj0Krfi6G7m5FvDhxDAi
 3X3LMj0+bOtmWODvmKwlzbsDitXi0bU9PHfZoHORYRon9fK/r2E8HBnXNrakhRhCzb32BFKZi7O87
 RS3i9dMfpBR7Tsdh1UI=
From: Jennifer Chang <sales@rootowels.space>
Date: Tue, 25 Feb 2020 04:12:10 +0000
Message-Id: <4u9y6557rhwk.6ws5FvKHeB8mZs4TgnOc_Q2@tracking.rootowels.space>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
X-Msg-EID: 6ws5FvKHeB8mZs4TgnOc_Q2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_201225_258730_89EB7E76 
X-CRM114-Status: UNSURE (  -0.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: elasticemail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.99.26.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: tracking.rootowels.space (space)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
Subject: [OpenWrt-Devel] super absorbent microfiber towel from ROO(Jennifer)
 0225
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
Reply-To: Jennifer Chang <sales@rootowels.space>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG/CoEZyaWVuZCwKSXTCoHdhc8KgbmljZcKgdG/CoGNvbnRhY3TCoHlvdS5UaGlzwqBpc8Kg
SmVubmlmZXLCoGZyb23CoFJvb8KgSW5kdXN0cmlhbMKgTGltaXRlZC4KV2XCoGFyZcKgc3BlY2lh
bGl6ZWTCoGluwqBtYWtpbmfCoGRpZmZlcmVudMKgdG93ZWxzLMKgR1lNwqB0b3dlbC9TcG9ydHMK
dG93ZWxzLCBwb2xpc2hpbmcgdG93ZWwsCmJhYnnCoGhvb2RlZMKgdG93ZWxzJsKgYmVhY2jCoHRv
d2Vsc8KgYm90aMKgaW7CoGNvdHRvbsKgYW5kwqBtaWNyb2ZpYmVyLgpIZXJlwqBjb21lc8KgYmVs
b3fCoG91csKgR1lNwqB0b3dlbMKgJiBwb2xpc2hpbmcKdG93ZWzCoHBob3RvwqBkZXRhaWxzwqBm
b3LCoHlvdXLCoHJlZmVyZW5jZS4KMSkuSXRlbTrCoEdZTcKgc3VlZGVkwqB0b3dlbApNYXRlcmlh
bDogODAlwqBwb2x5ZXN0ZXIvMjAlwqBwb2x5YW1pZGUKU2l6ZTogKGNhbsKgbWFrZcKgY3VzdG9t
ZXInc8Kgc2l6ZSkKV2VpZ2h0OsKgwqAyMDBHU03CoArCoAoyKS7CoEl0ZW06UG9saXNoaW5nIHRv
d2VsCkRvdWJsZSBjb3JhbCBmbGVlY2UgbGltaW5hdGlvbiB0b3dlbDoKU2l6ZTogNTAgeCA3MCBj
bQpDb21wb3NpdGlvbjo4MC8yMCBQT0xZRVNURVIvUE9MWUFNSURFCldlaWdodDo0MjBHU00KUGxl
YXNlwqBmZWVswqBmcmVlwqB0b8KgY29udGFjdMKgdXPCoGlmwqB5b3XCoGFyZcKgaW50ZXJlc3Rl
ZMKgaW7CoHRoZW3CoHNvwqB3ZcKgY2FuwqBoZWxwwqB5b3XCoHRvwqBwcm9tb3RlwqB0aGXCoGJ1
c2luZXNzLgpUaGFua3PCoGZvcsKgeW91csKga2luZMKgYXR0ZW50aW9uwqBhbmTCoGFwcHJlY2lh
dGXCoHlvdXLCoGNvbW1lbnRzwqBiecKgcmV0dXJuLgoqKioqKioqKioqKioKSmVubmlmZXIKU0FM
RVPCoEVYRUNVVElWRQpST0/CoElORFVTVFJJQUzCoExJTUlURUQKQUREUkVTUzoyQixCbG9jazEs
QnVpbGRpbmcxMyxaaGVueWVWYWxsZXnCoHRvd24sTG9uZ2dhbmfCoERpc3RyaWN0wqBTaGVuemhl
bixHdWFuZ2RvbmcsQ2hpbmEKUG9zdCBjb2RlOjUxODExNgpNb2JpbGUvV2XCoENoYXTvvJooODYp
LTE1ODE3MjM2NDY0CkUtbWFpbDogamVubmlmZXJAcm9vaW5kLmNvbcKgCmh0dHA6Ly90cmFja2lu
Zy5yb290b3dlbHMuc3BhY2UvdHJhY2tpbmcvdW5zdWJzY3JpYmU/ZD1UNWozWFhKS2FCVTNhYUZs
M2RPV3JnZ0JnNzNhaVJHaEtBNklBX3dFUFRMbkhKX21GM3Y2Yk9LS1UtODVfZjhzc0M4UFNhWWh3
Q3hENUNEQm0zRlRWTFctTHhJWHdmMF9CYjVXa0luUmZjY0lGZUpYekxKakZFTWlFSVZ4aEZBZ2t2
NnFBWEFsOG02RzREOTZoTmRyUWd4WERPZWVEdzJ4dnhCUHJCMTVtemVPSVRZc3FRTWRYZTk0ajNC
OGQxbUdQQ0pFcFltS0dZWVNvVUpTVEtKU09PUFAyejZ4N0NuNG05VFVKdHlycGNvODI0bDZKQ2kz
SkNWRVRtaG1ZV1ZkTmVmaVZYMzctaGFFNmpkSENBWW5NVzhPem9RMjhvVENKOHk4aUVNdVR0dVFi
a25FOGlTUHJ2dHAtQ3JjZDIzOXpBTzVjM1kxTVdhX2V5a3VxV3JkNU1ZLW1EVWVTYlM0c083a0Mx
NnoxYk43T3V6azN0VmpVZXVUbUdkVGFvWjc5Qlk4Zjhsb2Rvc1ZVMjJLdm5LZmdxUjFnb2NhNlg3
NmhMU3FPT18yWUhqN0w2djZMMGVCdmwzVmlXVkE2TXhDb1V5TVRRamxLaFJ6SVdSYi1ua0Y5ZUEx
LCBKZW5uaWZlciBDaGFuZywgLCAsICwgU3BhaW7CoApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
