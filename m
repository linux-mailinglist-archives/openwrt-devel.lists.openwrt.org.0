Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F56B2BCE
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 17:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LORfALRpOfLB0LR2ZPPmNKoil+eXLpU59Hd02IFb60s=; b=Odsu8Q5bfGNF9Fiaf/MIY98Bu
	XSOMnqb7X0OUbfMiE0qhtVEyTzyP+y7Trfhqu7RxjFmm420qv2iff+PGeoOh99b7PmRbfpe0eglgE
	+66SEBulkJBol4BIEEAhOjsV5OXKUdtxaAD+X0265zxyRLIYARlWtgk9ibItAn/KxEMY70UxX2Glx
	tr4P17q26ItkYD45vBIKckHR3UeuTuywvi4AozIiZMP6+ku7WheHqHrnSvU1fUUoFn+IyTF9JfI5U
	VQ/mAlWHAedaKAXy7dkG70yME/7Ini39XtMSiE7JySTQsieGd5U0s7rHLmeIegb4wo/BVKneynWrJ
	V6rNE3jgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i99oC-0007bA-Pr; Sat, 14 Sep 2019 15:17:56 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i99nz-0007Zz-JD
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 15:17:44 +0000
Received: by mail-ed1-x543.google.com with SMTP id c20so20460158eds.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 08:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=4aI13UYlP4STOCUptY4fFQwmG4g6NFYlAQcWjFQ/kg0=;
 b=gdc0fusX+9fwL6k9m9RAmx58IXvucXfWLe76uAVC+MOo875Yk2z3TZ3/iWAzO1hbgx
 HwEpuhouR16alqrQs6beKZs96RxhOw5L8XBaC/9UaF8/gFIqNUFn/axVB+aTExdSvhDR
 B0stv93303AMD1dzrRYt/43eZx7r2vY+8Q9emo34nsf2tWr4D7jfnJ7qgRkdQvE4POWQ
 CPR+WofcMSkQpm8BV/t4KnX6VLbDOr7VsapB0Gt1YnbyBn+t52Myo1JrVaxL+kCVtB4/
 ZluCRfKuK1LhB0eQaqCxi+/b+awVCnG/gyQCSBqc0jUIdq6rupBMO2FnsohZp8g47EwD
 mRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4aI13UYlP4STOCUptY4fFQwmG4g6NFYlAQcWjFQ/kg0=;
 b=SdIB/wHOj3jEziIuX887Y5IbZOVGhABnwRa6kaZodp+MUCTkt6RJJPi9x4gvN8m/Oi
 Uwz5++k+Cvj12dU3pW2s4aIRwqc3+lJ4Tbd3sc1QpB1KO7dI+NMf45IvMNyEHlmKP0Ru
 +3FjJ8ZhIOix7AAqf/4/rVxNrVsw9MtyeLlVRz+HmKmg/LGpjZBD/lAF4Bd1MLFPFJ1g
 XRhHfR0fHbKNz1LOxc7qg7F+taws3d8a/gm4SNgEXpm32tPwuqctDiGusCc1LrSdsakt
 /Wm3Q0FCFI93TErdgllXwoASJbYq9omUMoZKjlA4BXxw6YINsis1RzARdnsAUJZSqEvo
 kujw==
X-Gm-Message-State: APjAAAW/ruCd+Vkv8oYx+gkVWpHMdQbfcyG83kie5/01I+l31BYEQyYm
 MZ4chGzEpYx346O5oRsnmEzHB0sRvvg=
X-Google-Smtp-Source: APXvYqxu3WilOBepC1BKrgq9P3/IgNAF2cRwTseJZjKX+ghRp25nimM98B4Vi2022r00GgTPUWNJ2w==
X-Received: by 2002:a17:906:480b:: with SMTP id
 w11mr44482043ejq.137.1568474261949; 
 Sat, 14 Sep 2019 08:17:41 -0700 (PDT)
Received: from [10.33.34.5] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id x42sm5966087ede.24.2019.09.14.08.17.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Sep 2019 08:17:41 -0700 (PDT)
To: Andre Valentin <avalentin@marcant.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <45ad1f40-2a34-f7e6-d26d-1b41026c04ab@ncentric.com>
Date: Sat, 14 Sep 2019 17:17:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_081743_698694_E4B4BFF5 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] kernel: bump 4.19 to 4.19.72 broke ath79
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE0LTA5LTE5IDEwOjQ5LCBBbmRyZSBWYWxlbnRpbiB3cm90ZToKPiBIaSEKPgo+IEl0IHNl
ZW1zIHRoZSBrZXJuZWwgYnVtcCBicm9rZSBhdGg3OSBjb21waWxhdGlvbi4gVGhlIHByb2JsZW0g
bGllcyBpbgo+IHRhcmdldC9saW51eC9hdGg3OS9wYXRjaGVzLTQuMTkvMDAyOC1NSVBTLWF0aDc5
LWRyb3AtbWFjaGZpbGVzLnBhdGNoCj4KPiBJdCBjYW5ub3QgYmUgYXBwbGllZCBhbnltb3JlLiBJ
IHRyaWVkIGEgcXVpY2sgZml4LCBidXQgdGhlcmUgc2VlbXMgdG8gYmUgYSBiaWdnZXIgY2hhbmdl
Lgo+Cj4gS2luZCByZWdhcmRzLAo+Cj4gQW5kcsOpCj4KPgpzaG91bGQgYmUgZml4ZWQuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
