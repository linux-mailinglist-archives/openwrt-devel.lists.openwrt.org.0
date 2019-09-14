Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F53B2BE6
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 17:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mSJypgISAY2TTxWWUeb0OWp3EtxTi8hMHqA1vfI7zoU=; b=IHTdw4JWTuSUFG1tzW4xx4XGk
	GEc1q6htJFzGNzdTqy3VQ1E0Z0ZKaXb92ViTQJxkbNSVptQJ/MpeDA55aNRlT+/jmP/uJLNi6iN/I
	Wm0YFJlTuaEzOddx6Z5pn3awwx+Z+Vw4rYpM5zSHjAnykZABLuGIQ0XFs9a1OXIgw/MlmnHPj1Put
	AdJDqbD64MvKtNWHGjqwT3e+D1k3G5DhFT0FYxtxdYdmq5zz+Qg7/b2AleSIRLKP3jqbGb1u1mfQ3
	qOtL0v7D6mPiXns3h5ZY4bEh0oIVfmBAiF9FykFTbOe5c/VcUj5w3c5tkJyxNPxcN+Xa61D9I06zO
	uhb4X9I9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9A6R-00065g-Vy; Sat, 14 Sep 2019 15:36:47 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9A6I-00064q-Pz
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 15:36:40 +0000
Received: by mail-ed1-x541.google.com with SMTP id a23so27269816edv.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 08:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=fiYh4jtXUZx6vVfaB+lAtnsJ/6FaEVcLaN54hmJMHdM=;
 b=CLg1yUHPzGEInBcCAKCLEvw7FRXq8D2QUT+0k1PFvi8BlzhFVjEEEW7pFM0pzrh6fL
 xYc4cFiOtaHKKk6jlWVMbzs8nrogQiK9pZUZuvcSjIzZEg4sH3RJPm+nC6PQ130FzgPs
 jZGENWGt65K51YMFNfbRDZ/CFgBgSQ2/d3ZFDeQgxubEiZzBsFHiitGC9Ju41PBb+KUs
 Lb4SsLUaehwZ5wTTYWhSmM7bDfFjqEeCldtdhlfaM+GDt6DMaEZcujojuBoDJuSqtK0n
 0R4j8KhCqpNi7T39oofPmc3vCXRR3z618Ues9ILXr7GHFC43MIdp6HMNmDTksP0jELKw
 CpNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=fiYh4jtXUZx6vVfaB+lAtnsJ/6FaEVcLaN54hmJMHdM=;
 b=Ne7kE5OwfPJcIpkJNEw7B5VhU/WpDSMp+4qmhLClmwcEY0M1Y9RUubNDcXqcktTNwu
 9QpvkiEk1qPgqGPtaKKzlXB6kZHHhEACVQJP6bxZpgwPK/h/ZoU1JnTfo0MLJMw3ulmZ
 SLXmHLUkR32e10RJWRrWv0t3n9sfHnWUHcqkst6yQyE07cwEq7tu0WP18cK5MT2ut1Tt
 rQ9pjTRhWbq58MWGKSxGwT+GmEx/19j/ELIJuCzmgiUrfnLnaRA6HH1MFrXFsg2RWx1m
 4HeoY+8GHO51DJqCbVcaq3YLMFK5HuAHGv3q6KIr1qk7+icNfxSSwqlMo7YZCF73Uem6
 xaqg==
X-Gm-Message-State: APjAAAVFkKkyPsNM3eplsVI6CkUBh5O0n41TyzE38V7xAHV5ETI5FXNU
 N+JEcpv1ocpb8+BrTB3332S/6QX3qKQ=
X-Google-Smtp-Source: APXvYqwEvFJXKg+656fQiVqTNbnRf5Ikt5aZy+uqY7B3jfKIHlZSIlP7R+gu0QFmQtojZWJ8knL/Iw==
X-Received: by 2002:a50:f04e:: with SMTP id u14mr53329712edl.247.1568475396974; 
 Sat, 14 Sep 2019 08:36:36 -0700 (PDT)
Received: from [10.33.34.5] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id y25sm555541eju.39.2019.09.14.08.36.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Sep 2019 08:36:36 -0700 (PDT)
To: Magnus Kroken <mkroken@gmail.com>, Andre Valentin <avalentin@marcant.net>
References: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
 <094d18fd-ac5a-3688-95b6-1391f39fe113@gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <5e19d219-e50f-cd7c-f6b1-6524f14adabe@ncentric.com>
Date: Sat, 14 Sep 2019 17:36:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <094d18fd-ac5a-3688-95b6-1391f39fe113@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_083638_847189_6300EB46 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE0LTA5LTE5IDEyOjQ3LCBNYWdudXMgS3Jva2VuIHdyb3RlOgo+IEhpIEFuZHJlCj4KPiBP
biAxNC4wOS4yMDE5IDEwOjQ5LCBBbmRyZSBWYWxlbnRpbiB3cm90ZToKPj4gSXQgc2VlbXMgdGhl
IGtlcm5lbCBidW1wIGJyb2tlIGF0aDc5IGNvbXBpbGF0aW9uLiBUaGUgcHJvYmxlbSBsaWVzIGlu
Cj4+IHRhcmdldC9saW51eC9hdGg3OS9wYXRjaGVzLTQuMTkvMDAyOC1NSVBTLWF0aDc5LWRyb3At
bWFjaGZpbGVzLnBhdGNoCj4+Cj4+IEl0IGNhbm5vdCBiZSBhcHBsaWVkIGFueW1vcmUuIEkgdHJp
ZWQgYSBxdWljayBmaXgsIGJ1dCB0aGVyZSBzZWVtcyB0byAKPj4gYmUgYSBiaWdnZXIgY2hhbmdl
Lgo+Cj4gVGhlIGN1bHByaXQgaXNuJ3QgdGhlIGtlcm5lbCB1cGRhdGUsIGJ1dCB0aGlzIGNvbW1p
dDoKPiAwMGQ0OGJjYWMwIGFyNzF4eDogRml4IHBvdGVudGlhbGx5IG1pc3NlZCBJUlEgaGFuZGxp
bmcgZHVyaW5nIGRpc3BhdGNoCj4KPiBLb2VuIChvciBhbnlvbmUgZWxzZSksIGNhbiB5b3Ugc2hl
ZCBzb21lIGxpZ2h0IG9uIHRoaXMgb25lPyBJIG1vc3RseSAKPiBwb2tlIGF0IGtlcm5lbCBwYXRj
aGVzIHVudGlsIHNvbWV0aGluZyBoYXBwZW5zLCBJIGRvbid0IHJlYWxseSAKPiB1bmRlcnN0YW5k
IGhhcmR3YXJlL2tlcm5lbCB3ZWxsLiBTb21lIHRoaW5ncyBqdW1wIG91dDoKPgpIaSwKClNvcnJ5
IGFib3V0IHRoYXQuCgphdGg3OSBjb250YWluZWQgYSBwYXRjaCB3aGljaCByZW1vdmVzIHRoZSBs
ZWdhY3kgaXJxIGNvZGUsIHdoaWNoIGlzIApiZWluZyBhbHRlcmVkIGluIHRoZSBmaXguCgpIZW5j
ZSB0aGUgcGF0Y2ggZHVyaW5nIGJ1aWxkIG9mIGF0aDc5IGRpZG4ndCBhcHBseS4KCkkgZGlkbid0
IG5vdGljZSBpdCwgYXMgdGhpcyByZW1vdmFsIHdhcyBvbmx5IHVwc3RyZWFtZWQgaW4gNS4wIGFu
ZCBpdCdzIApzdHJpY3RseSBub3QgbmVlZGVkIHRvIHJlbW92ZSBpdCwgYXMgaXQncyBzaW1wbHkg
dW51c2VkIG92ZXIgdGhlcmUuCgpGaXhlcyBoYXMgYmVlbiBwdXNoZWQgZm9yIG1hc3RlciBhbmQg
MTkuMDcuCgpSZWdhcmRzLAoKS29lbgoKPiAxLiBUaGUgY29tbWl0IG1lc3NhZ2UgaXMgbGFiZWxl
ZCBhcjcxeHgsIGJ1dCB0aGUgcGF0Y2ggaXMgYXBwbGllZCB0byAKPiB0aGUgZ2VuZXJpYyB0YXJn
ZXQuIEl0IHBhdGNoZXMga2VybmVsIGZpbGVzIHRoYXQgSUlVQyBhcmUgdXNlZCBieSBib3RoIAo+
IGF0aDc5IGFuZCBhcjcxeHggdGFyZ2V0cy4KPiAyLiBJdCBtb2RpZmllcyBhcmNoL21pcHMvYXRo
NzkvaXJxLmMuIFRoZSBwYXRjaCB0aGF0IGZhaWxzIG9uIGF0aDc5LCAKPiAwMDI3LU1JUFMtYXRo
NzktZHJvcC1sZWdhY3ktSVJRLWNvZGUsIGRlbGV0ZXMgdGhpcyBmaWxlIGNvbXBsZXRlbHkgCj4g
KHdoaWNoIG5vdyBmYWlscywgYXMgdGhlIGZpbGUgY29udGVudCBpcyBjaGFuZ2VkIGJ5IAo+IDM0
My1NSVBTLWF0aDc5LUZpeC1wb3RlbnRpYWxseS1taXNzZWQtSVJRLWhhbmRsaW5nLWR1cmluLnBh
dGNoKS4KPgo+PiBLaW5kIHJlZ2FyZHMsCj4+Cj4+IEFuZHLDqQo+Cj4gUmVnYXJkcywKPiBNYWdu
dXMgS3Jva2VuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
