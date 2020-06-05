Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08941EFBCE
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 16:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpLDM/Fgeoub/eoj680QPwsPAES8bBkS4067tAgTB04=; b=CPpwOqgLyrzwUY
	ntSV9kJJIJYP5QYDNrTamt6wlpyYAe6U6evIkNhpEhQellsnsRb398ReCi1jhbHMd3b93E1TfMfdK
	4DlxsxfsEaU5T19OjJMw64K5PKL1SCy/9hiutfp6n6MEyunzAI8KxSGHr7WJVXcJip693dXMEozOT
	lb1L4tubzb8gFesQJBjBtwe/im8cKifU4luy03ViSCl6NKV133/+eZRi6IRMr72gsdUn78e5wMr0x
	1nLZgJRcrDidS4OrDbKyWOQUqkan5em6DBj/IaAvMrG5nxUEZToKcNxAVplOCWJFB4t2I8PAy27+G
	sq97xfCLYpHVg4N+ZnUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDeY-0006b4-41; Fri, 05 Jun 2020 14:49:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDeR-0006a7-Q5
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 14:48:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id g10so8688475wmh.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 05 Jun 2020 07:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3BpqF1tnAoRGPZ2s7eSKsflu5frLag2kWAEE3ejyj6A=;
 b=H0tsp1PUr29QJkfPkKJduB3vlL/8qDAu2Tsm9opGTc/uXurDdSpIJ6lZaUi9o8UlQ5
 WNN/xROMFauQtEywa4yjwr8wp1sH1xFeN5URI90O/7a2a4G9+lpUehjkh2Fe9MA8ZN17
 XkbAQp/hN3vaXY+1zEjn2OqA2x38ae+Ps43HbfYOQnmiXxNLvvEXM49iLljAZvWEt+oI
 pE1t/lYJ4bJ1oscQwJz+KFeKAKDUhgPrCWvplLJfMtQ7+cZb06l/tNGfB0BT3X1doYHi
 YmN7ez2Ye0KdVONy7P01qc0ABhxtPtPVNQ1PCh0/95Wk2okVhZ2TdoCqT/2+t7Wh26N3
 2axA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3BpqF1tnAoRGPZ2s7eSKsflu5frLag2kWAEE3ejyj6A=;
 b=etQiJ3HCGCyuejahk/zjuCCKW8ro68dMpPndiIk9OUYses5m5Xlgqb6WZSqvSwiWur
 oeozMarQhQYULC8sGJcubV9CykJj0y/YFww78cOB/8pQ/E5cP3aeXt7SVj6N8TAzfxBk
 htvswIvE7y/b7yqtmQxLbFplPb+KCUqRZY3RCVe/+wPUaGY4+bR/ardqzxUhulP6H7RE
 9EaAwIE3nPJUoA7DUaf7doNTIWeJvIWHq6thu0Je9/sHelFk7XaEfNawkzsvbWx+LPWW
 ZTMejs7+BosSuisNHnNZ7L4nM/w5RXkjPsPDjlKm2ioz6VzrL8dCCp1gE93IEh2B62vh
 9Hvw==
X-Gm-Message-State: AOAM530ETB5qIpIsgEKTsYlMJ7i09IN10iiRFQWjGY7WJoJnH4sFPSJb
 Txp9zSksz9XMyrOHhBBkxbIom9FpOFc=
X-Google-Smtp-Source: ABdhPJxaR1BaTVCzUdh1Sjo9yW0G120iPTlLZdGxBJkK74kWNC7YjdBWszJUIB+21SEGVtjagRRBIg==
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr3236737wme.13.1591368531685; 
 Fri, 05 Jun 2020 07:48:51 -0700 (PDT)
Received: from [10.230.229.11] ([77.87.51.131])
 by smtp.googlemail.com with ESMTPSA id w3sm12397404wmg.44.2020.06.05.07.48.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 07:48:51 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20200605143748.28826-1-ynezz@true.cz>
From: Perry <isprotejesvalkata@gmail.com>
Autocrypt: addr=isprotejesvalkata@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <7d294a8d-6635-196c-4ce5-13754f755836@gmail.com>
Date: Fri, 5 Jun 2020 16:48:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200605143748.28826-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_074855_849279_B1B4396F 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [isprotejesvalkata[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: edgerouter-x: fix
 missing wan interface
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gUGV0ciwKCkkgaGF2ZSBhbHJlYWR5IGNyZWF0ZWQgYSBQUiB0byBkbyBqdXN0IHRoaXMs
IGZvciBib3RoIHRoZSBFUi1YIGFuZApFUi1YLVNGUC4gIGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVu
d3J0L29wZW53cnQvcHVsbC8yOTYxCgpQZXJoYXBzIHRoZSBQUiBjb3VsZCBiZSBtZXJnZWQgaW5z
dGVhZCBzaW5jZSBpdCBoYW5kbGVzIGJvdGggZGV2aWNlcy4KCkdyZWV0cywKUGVycnkKCk9uIDYv
NS8yMCA0OjM3IFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IENvbW1pdCA1YWNkMWVkMGJlMGQg
KCJyYW1pcHM6IG10NzYyMTogZml4IFViaXF1aXRpIEVSLVggcG9ydHMgbmFtZXMgYW5kCj4gTUFD
IGFkZHJlc3NlcyIpIGRpZG4ndCBvbmx5IGNoYW5nZWQgbmFtaW5nLCBidXQgYWxzbyByZW1vdmVk
IFdBTgo+IGZ1bmN0aW9uYWxpdHkgZnJvbSBldGgwIHBvcnQsIHdoaWNoIGlzIG5vdCBkZXNpcmVk
LCBzbyBsZXRzIGFkZCBpdCBiYWNrLgo+IAo+IENjOiBDaHVhbmhvbmcgR3VvIDxnY2g5ODEyMTNA
Z21haWwuY29tPgo+IENjOiBBZHJpYW4gU2NobXV0emxlciA8ZnJlaWZ1bmtAYWRyaWFuc2NobXV0
emxlci5kZT4KPiBDYzogREVORyBRaW5nZmFuZyA8ZGVuZ3FmNkBtYWlsMi5zeXN1LmVkdS5jbj4K
PiBGaXhlczogNWFjZDFlZDBiZTBkICgicmFtaXBzOiBtdDc2MjE6IGZpeCBVYmlxdWl0aSBFUi1Y
IHBvcnRzIG5hbWVzIGFuZCBNQUMgYWRkcmVzc2VzIikKPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWg
dGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IC0tLQo+IAo+IEFzIGluIGh0dHBzOi8vb3BlbndydC5v
cmcvdG9oL3ViaXF1aXRpL3ViaXF1aXRpX2VkZ2Vyb3V0ZXJfeF9lci14X2thI3N3aXRjaF9wb3J0
c19mb3JfdmxhbnMKPiAKPiAgdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvYmFzZS1maWxlcy9l
dGMvYm9hcmQuZC8wMl9uZXR3b3JrIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3JhbWlw
cy9tdDc2MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrIGIvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9tdDc2MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCj4gaW5kZXgg
YmE5ZjdmYjdiNjEzLi41YjBmN2ZmMmNkZWYgMTAwNzU1Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L3Jh
bWlwcy9tdDc2MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCj4gKysrIGIvdGFy
Z2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3Jr
Cj4gQEAgLTQ0LDcgKzQ0LDcgQEAgcmFtaXBzX3NldHVwX2ludGVyZmFjZXMoKQo+ICAJCXVjaWRl
Zl9zZXRfaW50ZXJmYWNlc19sYW5fd2FuICJsYW4yIGxhbjMgbGFuNCBsYW41IiAid2FuIgo+ICAJ
CTs7Cj4gIAl1Ym50LGVkZ2Vyb3V0ZXIteCkKPiAtCQl1Y2lkZWZfc2V0X2ludGVyZmFjZV9sYW4g
ImV0aDAgZXRoMSBldGgyIGV0aDMgZXRoNCIKPiArCQl1Y2lkZWZfc2V0X2ludGVyZmFjZV9sYW5f
d2FuICJldGgxIGV0aDIgZXRoMyBldGg0IiAiZXRoMCIKPiAgCQk7Owo+ICAJdWJudCxlZGdlcm91
dGVyLXgtc2ZwKQo+ICAJCXVjaWRlZl9zZXRfaW50ZXJmYWNlX2xhbiAiZXRoMCBldGgxIGV0aDIg
ZXRoMyBldGg0IGV0aDUiCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
