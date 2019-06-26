Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828DA56A1D
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 15:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aqcjzAd5cFnueSPFCY2fIQnVfFqoE/YJks/AnkakPAk=; b=I3helGyV2Hj24+09B/Uuda+tl
	QqQhQW8S8O2PyZo079SOYOF1giH6NSLsIL/+igBIlwyFeMLtVhfnjh/61xFZH3ChIUvru9TuH6Xo0
	Q08EBsK08OibA7QAEWXDVNU7E++Eb9ykQcP81uflSRCMjFgIUsMVhB8Ep6DHNfG/WdyDNYCwJAJu0
	b6Sg8KSzH/L8mhLGCekxhsfUErkN0g4RFLQuHS7PYbpNty1K2QbpQEEfcc1sTIBS5KAFM6NVqZbgO
	Sch/CtWXjdqcA1wFlUIHloVm/KKnv1eIl5CTGrFHoyGEjbC5ir6/prDuKZKrmSiZw1tJXTJhKi19H
	oV3oqK7CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7kt-0000oO-Qp; Wed, 26 Jun 2019 13:14:31 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7kZ-0000o0-JC
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 13:14:13 +0000
Received: by mail-qt1-x835.google.com with SMTP id a15so2255053qtn.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 26 Jun 2019 06:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=L/vXPSZ2yn+IbhDt3BvItzZBkUBEKucHcVLv2Zqy5gQ=;
 b=Dqgf5FofO/cR9c5CipEmfMeyenje3jmd5IH6WulQbPeWqFvpz0wrwr6+l2aqys/YCY
 ZMq/izh1KO4OXvMPUljnvL4D1Mq1bjROzdPcu8CaIpWeM75GrDEaR9RATSMkxDGtZU1r
 xf4YjsPr1zcGPsTlIOwRfhc/uZsbtvMruw10kH7j99tbRvYoNP42oVgsbVr7zYTyZK80
 zsm9mFm1s0TgbLifhZDxAAXlAVmQVGvdO9MVgsAslmtqifqBoDpHuE8KZNLirfTpWLx7
 +AsdRD81lYW4SF7ckTOYtoeqIX+YWVPM6vCXz035GeafT4hNH0SN6yLNrCOERUJ2RrmN
 FY1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=L/vXPSZ2yn+IbhDt3BvItzZBkUBEKucHcVLv2Zqy5gQ=;
 b=UbYh4KuEw+Jj5OII28SFgMxAmAUTUs3KHrc8ud9KtEGVjFyEoYQcGNYQ6x8/zYhRjy
 lciN/yPTYXFCnnpMTb/SctH2Lu6TF69+s8wQkmdv+pL1SK4ci0nB9mob30NEjQTfaOVi
 LoN1cs3EZH7xMcMX10ruX3BoED/p1m3jOYUi7XoLdBTojUKkCm1r90wZy//eCa5t+IZS
 oqdM4foxJm7S2pq2HFO88yQshCgQOkeqbmhoKyLDeYWnmai/GLd+DR9YCjKgoCL9p1sj
 p7Chm/mugAXchknmSaDiBXiV7Mqa6hP2ReNtXE0AeNt7DK3+O4n556DxwSFLLIM4oIBA
 5+ug==
X-Gm-Message-State: APjAAAW9TjgWS76Wes7TY6LHVbtMBzsd4uuIPStLAuoaMg600KPIiPwG
 AjlfzE+daE+uUPZG+CK40RD2916I
X-Google-Smtp-Source: APXvYqyR13ezZeRxUwQt2yoc41gXSQAi3G349ILnJeiRL3qSGyLWKo63TFGCUyEqvAurPEdHzs+nzw==
X-Received: by 2002:a0c:eecd:: with SMTP id h13mr3473731qvs.46.1561554849749; 
 Wed, 26 Jun 2019 06:14:09 -0700 (PDT)
Received: from ?IPv6:2804:328c:2079:e100:60fc:5800:2988:6e85?
 ([2804:328c:2079:e100:60fc:5800:2988:6e85])
 by smtp.gmail.com with ESMTPSA id u7sm11146233qta.82.2019.06.26.06.14.08
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 06:14:08 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>
 <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>
 <168b7d66-a94e-2425-00da-9ee7a6cc8e61@wwsnet.net>
 <3ba98caf-8fb1-6d7c-c192-9d8bfb84c395@wwsnet.net>
 <877e9820ic.fsf@miraculix.mork.no>
From: Fernando Frediani <fhfrediani@gmail.com>
Message-ID: <bfa44cfb-dbda-d450-969e-9d61535a3538@gmail.com>
Date: Wed, 26 Jun 2019 10:14:06 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <877e9820ic.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_061411_638110_CB096095 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:835 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fhfrediani[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Problem with "base" release repositories
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

KzEKClRoYW5rcyBmb3IgYWxsIEpvLgoKRmVybmFuZG8KCk9uIDI2LzA2LzIwMTkgMDU6NTAsIEJq
w7hybiBNb3JrIHdyb3RlOgo+IEpvLVBoaWxpcHAgV2ljaCA8am9AbWVpbi5pbz4gd3JpdGVzOgo+
Cj4+IHRoZSBiYXNlIHJlcG9zaXRvcmllcyBoYXZlIGJlZW4gZnVsbHkgcmVzdG9yZWQgYW5kIHNo
b3VsZCBiZSBzYWZlIHRvIHVzZQo+PiBhZ2Fpbi4KPiBUaGFuayB5b3UgZm9yIGJvdGggZmFzdCBy
ZXNvbHV0aW9uIGFuZCB0aGUgY29udGlub3VzIGluZm8gdXBkYXRlcy4KPiBUaGF0J3MgcHJldHR5
IGltcHJlc3NpdmUsIGFuZCBJIGp1c3QgaGF2ZSB0byB3b25kZXIgaG93IG11Y2ggc2xlZXAgeW91
Cj4gZ290IGxhc3QgbmlnaHQgOi0pCj4KPiBJTUhPLCB0aGlzIHdhcyBhIGRlbW9uc3RyYXRpb24g
b2YgcHJvZmVzc2lvbmFsIGlzc3VlIGhhbmRsaW5nIHdpdGggdmVyeQo+IGxpbWl0ZWQgcmVzb3Vy
Y2VzLiAgT3BlbldydCBpcyBvYnZpb3VzbHkgaW4gZ29vZCBoYW5kcyB0aGVzZSBkYXlzLgo+Cj4g
QSBiaWcgdGhhbmtzIHRvIHlvdSBhbGwhCj4KPgo+Cj4KPiBCasO4cm4KPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
