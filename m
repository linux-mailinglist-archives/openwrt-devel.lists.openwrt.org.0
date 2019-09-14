Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80595B2B06
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 12:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t4HjzLpdvpMOx5Yixz6zS+mzcAOfLoJcXFz7Dg5iUhQ=; b=JNLOGj3lppc/ScS/DRMocEqVA
	REqJyTTWF34zPm8lz6P0QY/rsA15JRAn5cAyY3Nz+clndMu66LO7nlbBPXYMn6dETYcaCVJmFHEMs
	L2QHiSsR0A9EtFfBAI/jOMVLEo9FtvyxWmW3n0yzt+cTzpj74CYh1X8St2nmXqdggCFS+A/jRIcHb
	Mrozxn1k+6cjw732loQMg/8VMg7O1LdDIVhU7DtdJeXj992HqIBoWOj4aLJLpmZkEUlIb1PpLJO+F
	AlfP0Af+/B0t19jgF3RgbW9/XsHkhd52SXq7YIdLy82A1EgTQr0ItyS/DGSouK2Bu4RkirN5IHNRL
	Nez4d5mKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i95aN-0005go-IS; Sat, 14 Sep 2019 10:47:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i95aC-0005gP-OC
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 10:47:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id o184so5233022wme.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 03:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IocdSReFiLSKrq3v0X5DowcPsHsW5B8m2OSN98tNR+E=;
 b=taRaxoZfi4WYfwpcaP0Br3hDTecHPPs5I1xh0lWKcxA3c6YqArmv18ZIe5YZfBRnhI
 wjMO43sxwwvokgwfuRAsD5a7cdKvgQLmPj3AyY/Het7Ly9d+uJiVEYNGukKjrMh41fdW
 5/7lKg5TbW8zERVOc5dXG8WUI/4ov1nlS2EZG3LvzUcmF1jQTWY4HxQgguEpGmA3U3RX
 WhUmag4hloCPjGuLYrPkbEIgUg7gR0Lq7QQaxQLcZWpGTKWB0wimyOfYMzheiAVwaE1k
 AVM0dl3Nru5Bsyt8Dy8oGfBitKBqCjxd5n4wDAlcCO3Q4qaBbSNS+1i+rxB+42fgv9T3
 BUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IocdSReFiLSKrq3v0X5DowcPsHsW5B8m2OSN98tNR+E=;
 b=hMRdgo7m2VyJWUQFHA1KnOS2HB0Gs4hV/RFhuad3dswrxHR8EvakdmgutUNehskNdD
 2UmOgc0NAvgPujL+vVnzjJ/GYENmMXxp2dc/lY6rQdtZ1dyu+AbLXMIfKoFV71cQgtHV
 bqr5S0cEL4ugQ/0tB8H9eDHL3EQREWPaZZ5eWFfxX8GFS9G/vZGh2MhCPURcDM5nPSoI
 IF+AFsaVGWwkbU8xXmoQo4fzAK0E3G8sngyJlTtQE5HRMRTCeB75poCr0fUxOoMUR3C9
 KvOVcdseOhzQmUlP3rsqTX+BzGo8FP+qzpWyiLNd1quaxh8pe2JJYzjpDdxc0gxflxpl
 HGFg==
X-Gm-Message-State: APjAAAXik9SLoS5CJdWHKXeDB8ahp1ZXjzjQ+fy2xoN5EHVIn+kYZjwl
 C8Y/ty4oj2Q/JXo+Ad8d8NlUKcUt
X-Google-Smtp-Source: APXvYqz/cK4OONhKhPz1hp18UrKSYrGLTl6Ww5YF9b/yoAeVJdwgQQJC1fKMsioSCfV9yXBwKVuzBQ==
X-Received: by 2002:a05:600c:307:: with SMTP id q7mr6954333wmd.6.1568458027995; 
 Sat, 14 Sep 2019 03:47:07 -0700 (PDT)
Received: from [172.18.1.187] (232.90-149-217.nextgentel.com. [90.149.217.232])
 by smtp.gmail.com with ESMTPSA id 189sm11523351wma.6.2019.09.14.03.47.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Sep 2019 03:47:07 -0700 (PDT)
To: Andre Valentin <avalentin@marcant.net>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
References: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
From: Magnus Kroken <mkroken@gmail.com>
Message-ID: <094d18fd-ac5a-3688-95b6-1391f39fe113@gmail.com>
Date: Sat, 14 Sep 2019 12:47:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_034712_855326_EC4AB2FC 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mkroken[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQW5kcmUKCk9uIDE0LjA5LjIwMTkgMTA6NDksIEFuZHJlIFZhbGVudGluIHdyb3RlOgo+IEl0
IHNlZW1zIHRoZSBrZXJuZWwgYnVtcCBicm9rZSBhdGg3OSBjb21waWxhdGlvbi4gVGhlIHByb2Js
ZW0gbGllcyBpbgo+IHRhcmdldC9saW51eC9hdGg3OS9wYXRjaGVzLTQuMTkvMDAyOC1NSVBTLWF0
aDc5LWRyb3AtbWFjaGZpbGVzLnBhdGNoCj4gCj4gSXQgY2Fubm90IGJlIGFwcGxpZWQgYW55bW9y
ZS4gSSB0cmllZCBhIHF1aWNrIGZpeCwgYnV0IHRoZXJlIHNlZW1zIHRvIGJlIGEgYmlnZ2VyIGNo
YW5nZS4KClRoZSBjdWxwcml0IGlzbid0IHRoZSBrZXJuZWwgdXBkYXRlLCBidXQgdGhpcyBjb21t
aXQ6CjAwZDQ4YmNhYzAgYXI3MXh4OiBGaXggcG90ZW50aWFsbHkgbWlzc2VkIElSUSBoYW5kbGlu
ZyBkdXJpbmcgZGlzcGF0Y2gKCktvZW4gKG9yIGFueW9uZSBlbHNlKSwgY2FuIHlvdSBzaGVkIHNv
bWUgbGlnaHQgb24gdGhpcyBvbmU/IEkgbW9zdGx5IApwb2tlIGF0IGtlcm5lbCBwYXRjaGVzIHVu
dGlsIHNvbWV0aGluZyBoYXBwZW5zLCBJIGRvbid0IHJlYWxseSAKdW5kZXJzdGFuZCBoYXJkd2Fy
ZS9rZXJuZWwgd2VsbC4gU29tZSB0aGluZ3MganVtcCBvdXQ6CgoxLiBUaGUgY29tbWl0IG1lc3Nh
Z2UgaXMgbGFiZWxlZCBhcjcxeHgsIGJ1dCB0aGUgcGF0Y2ggaXMgYXBwbGllZCB0byB0aGUgCmdl
bmVyaWMgdGFyZ2V0LiBJdCBwYXRjaGVzIGtlcm5lbCBmaWxlcyB0aGF0IElJVUMgYXJlIHVzZWQg
YnkgYm90aCBhdGg3OSAKYW5kIGFyNzF4eCB0YXJnZXRzLgoyLiBJdCBtb2RpZmllcyBhcmNoL21p
cHMvYXRoNzkvaXJxLmMuIFRoZSBwYXRjaCB0aGF0IGZhaWxzIG9uIGF0aDc5LCAKMDAyNy1NSVBT
LWF0aDc5LWRyb3AtbGVnYWN5LUlSUS1jb2RlLCBkZWxldGVzIHRoaXMgZmlsZSBjb21wbGV0ZWx5
IAood2hpY2ggbm93IGZhaWxzLCBhcyB0aGUgZmlsZSBjb250ZW50IGlzIGNoYW5nZWQgYnkgCjM0
My1NSVBTLWF0aDc5LUZpeC1wb3RlbnRpYWxseS1taXNzZWQtSVJRLWhhbmRsaW5nLWR1cmluLnBh
dGNoKS4KCj4gS2luZCByZWdhcmRzLAo+IAo+IEFuZHLDqQoKUmVnYXJkcywKTWFnbnVzIEtyb2tl
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
