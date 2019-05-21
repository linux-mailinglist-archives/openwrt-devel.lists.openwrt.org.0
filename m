Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADDB256C7
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 19:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MUwKLk5Ic3ArIsQRL8XE8wM6GqsGlx4vZcOsQ93HQ1A=; b=YJNMjM8WjgZCwXQcuI5smW/n5
	D+/KFb6EPff4qZDTxm2b3mmzmBRayhRAz6ynbhfpR5W4uOsejcytLyY/NML4g1qa4gnFoSlJgmyGZ
	jyU0gtAGscuWhNlnQ6tb0Mkj71RV//CTcoTjiQnbksk0TZTp2XDaYVSyguy/qci6N/L+LHDNa3XhI
	28o1xjb9057UMiGK1a2LE53geUy0sPQ9eWhFd/W3+IN2yOImlDFv2bdLmDPbt3LBJ/JE6+swfa9om
	zNmdwXnfS37CZ1BbXw0WLJ3xDSQwyFLTOBxw8iak+CmYIKb96nOmcnVFSh4skv1d/j413jBYxgwt0
	1gIu7QCtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8f7-0008E0-5L; Tue, 21 May 2019 17:34:53 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8eu-0008DY-C2
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 17:34:42 +0000
Received: from p548c8ce3.dip0.t-ipconnect.de ([84.140.140.227]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hT8er-0001yY-Gu; Tue, 21 May 2019 19:34:37 +0200
To: Nick <vincent@systemli.org>, openwrt-devel@lists.openwrt.org
References: <ff9d8076-6c33-4cd4-1fa2-2b236d4556ac@systemli.org>
From: John Crispin <john@phrozen.org>
Message-ID: <f8492525-d73a-32ad-babd-4c574fa5f7a4@phrozen.org>
Date: Tue, 21 May 2019 19:34:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ff9d8076-6c33-4cd4-1fa2-2b236d4556ac@systemli.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_103440_571903_542FBEE1 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Extending iwinfo to set interface to monitor
 mode
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDIxLzA1LzIwMTkgMTc6NDQsIE5pY2sgd3JvdGU6Cj4gSWYgSSBleHRlbmQgaXdpbmZvIHRv
IGFsbG93IHNldHRpbmcgaW50ZXJmYWNlcyBpbnRvIG1vbml0b3IgbW9kZSwgd2lsbAo+IGl0IGJl
IGV4Y2VwdGVkPwo+IE9yIGlzIGl3aW5mbyBqdXN0IGZvciBnZXR0aW5nIGluZm9ybWF0aW9uIGZv
ciBhbiBpbnRlcmZhY2U/Cj4KPiBJIHVzZSBsaWJpd2luZm8gZm9yIGFic3RyYWN0aW9uIGZvciBt
eSBvd24gZGFlbW9ucy4KPgo+IEJlc3RzLAo+IE5pY2sKCgppd2luZm8gaXMgZGVzaWduZWQgZm9y
IGludHJvc3BlY3Rpb24gb2YgdGhlIGludGVyZmFjZXMgcmF0aGVyIHRoYW4gCmNvbmZpZ3VyYXRp
b24uIHlvdSBzaG91bGQgdXNlIHRoZSBpdyB0b29sIGZvciB0aGF0CgogwqDCoMKgIEpvaG4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
