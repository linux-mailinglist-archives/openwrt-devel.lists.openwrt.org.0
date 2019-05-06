Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814DE145D2
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 10:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfgW3TIEjDG2fI/CZDMpPjLS3pPRFDKjuSa0gXHtWqc=; b=a0clqnIyS98/qn
	grxAoCq1UcTZq1HHR1C03lovRvyvWuYwuKWgyQB6eqqcF7P7FJrZ6msdUPYlHwIwgHa5Gq37FuHYN
	oRL1fUn4iWabkZZaRJ35LbIYcmXcakOTKviP29FSecUgdmevLvcFqYgfhUejPuog3gYueH1QjpceX
	kfjTNJOdYjo+8vZwVfCqLgxCFqdYfuFifSkrjG7UOHOsFmv2mOiuiJae6CzYv+XxCoeSWI4skK/Nl
	Fszl2xUdzU/YzFeY3DQ+DGSwxgExRYaC00j8EMEFaZhgjDR+AvMruBZJZTwCtuHojZpPYV56T5mmY
	NgN8daPeMeGAGHw40eqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYjs-0000aH-5X; Mon, 06 May 2019 08:12:44 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYjj-0000Zv-8N
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 08:12:36 +0000
Received: by mail-ot1-x341.google.com with SMTP id d10so5576692otp.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 May 2019 01:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=psIsnJ/k4tM44tQMpBwjkl6Kf+nH+a0VfoFudiugx4U=;
 b=IVVo3tPpP2MnOluE1mBFB5Mf6RF3yg4d90OQJnRQtUKN/iiplWPHIAH6RlXKxOW9E5
 JoIzJrhGIpQt9iSiXVBkqAo7Z3c+MNO9e9lXQxGGDAG7DfqNEIc+CEACWCB3fA9d9889
 Y7aGL0fo3cNRO4FOZTG6ooK6CU+1q6Rg0HWhyyT1ixRYEnIc3hxwl4PpXYgyg/8y2TJX
 pxNC50ylZ2LJueSECjAJdz9A/Bf7jY7aomsVd98T4xB7V8Q2p0sYXZCVxj/EHRVW4m/f
 nZLWu4yfVsVRP1zMV8yxoJ16exOT2e/s8/eKFyeTHtNVzgbLNMCpqMVVrH+MVLHFi9fU
 e51w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=psIsnJ/k4tM44tQMpBwjkl6Kf+nH+a0VfoFudiugx4U=;
 b=I6Ljd9rJGcKKy6zUi+J91rulMmr9Ba1V8htZxOeXMAml0ffJSJ9DdPLU4EUoUgQX/2
 HIGGwnxET4DTwKDivpd75HtX2NNr14XAbCBz4EG8gGEppTpNXh+l7M9PR9g+uhe+WanA
 wW31o6bjCIEkeFsjrkmwezuO5apUyQ6GJATC3vwYqYRZ++vLH+nlDn9JEXYLtnuM4Wt5
 4fOrOHIk7FywR4UrtC4kC/ZLpTN2gOh01xjzeAXfy9blutwBR6W4v5AkD30IcXV8euaO
 KOEPRtsTYtdTALrWfREBDYlj9la5ZQoISzr/swagcCwBkS2SyJi78T1AiVFEVr+PyiHy
 u89A==
X-Gm-Message-State: APjAAAUXixE51efuB4GEjFqKsPPhSRtySUXDVjYi0XxLQZKy/Wxm9cO7
 o3xYwEFb+hp5PzWi5MRbEW40dElJ48Ph00cYZOc=
X-Google-Smtp-Source: APXvYqyaBPOeulWIFnPDCTAyqjus4cb+qRf66ATDmmvj938pkE57pvMeag1ex1MqwLZgkYBEWDlqKP34G27vNYYk+fY=
X-Received: by 2002:a9d:77d6:: with SMTP id w22mr15955304otl.154.1557130354154; 
 Mon, 06 May 2019 01:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <1557087260-32680-1-git-send-email-ynezz@true.cz>
In-Reply-To: <1557087260-32680-1-git-send-email-ynezz@true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Mon, 6 May 2019 10:12:23 +0200
Message-ID: <CAKfDRXjYc2e=raAO2cCK05G+yJLACdQ5PGTW1PpUZVmRaVmDKw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_011235_316170_B3F79672 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] [RFC] build: allow selective per
 device initramfs
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Stijn Segers <foss@volatilesystems.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCk9uIFN1biwgTWF5IDUsIDIwMTkgYXQgMTA6MTQgUE0gUGV0ciDFoHRldGlhciA8
eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gSSBmaW5kIGl0IHF1aXRlIHdlaXJkIHRvIGRlbWFuZCBh
bnkga2luZCBvZiBjb21waWxhdGlvbiBieSB0aGUgZW5kLXVzZXJzLCBidXQKPiBJIGFsc28gZmlu
ZCBpdCBxdWl0ZSB3YXN0ZWZ1bCB0byBidWlsZCBpbml0cmFtZnMgaW1hZ2VzIGZvciBhbGwgZGV2
aWNlcyB1bmRlcgo+IHBhcnRpY3VsYXIgdGFyZ2V0IChsYW50aXEveHJ4MjAwIGFuZCByYW1pcHMv
bXQ3NjIwKSwganVzdCBiZWNhdXNlIG9uZSAob3IKPiBtaW5vcml0eSkgb2YgZGV2aWNlIG5lZWRz
IHRoaXMgaW1hZ2UuCj4KPiBTbyBJJ3ZlIGxvb2tlZCBhdCB0aGUgcG9zc2libGUgc29sdXRpb25z
LCBhbmQgd2l0aCB0aGUgbGltaXRlZCB0aW1lIG9uIGhhbmQKPiBJJ3ZlIGNvbWUgdXAgd2l0aCB0
aGUgZm9sbG93aW5nIHBhdGNoIHNlcmllcy4gSSdtIHN1cmUsIHRoYXQgdGhpcyBpcyBraW5kIG9m
IGEKPiB3ZWlyZCB3b3JrYXJvdW5kLCBidXQgSSBmaW5kIGl0IGxlc3Mgb2J0cnVzaXZlIHRoZW4g
YnVpbGRpbmcgb2YgaW5pdHJhbWZzCj4gaW1hZ2VzIGZvciBhbGwgdGFyZ2V0cywgd2l0aCBubyBh
cHBhcmVudCB1c2UuCj4KPiBFc3NlbnRpYWwgc29sdXRpb24gd291bGQgYmUgc29tZXRoaW5nIGxp
a2UgaW1hZ2UgcmVjaXBlIGZvciBpbml0cmFtZnMsIGJ1dAo+IHNpbmNlIGl0J3MgcXVpdGUgY29t
cGxpY2F0ZWQgdG9waWMgaXQgd291bGQgbmVlZCBhIGxvdCBtb3JlIHRpbWUgdG8gZml4IGl0Cj4g
cHJvcGVybHkuCj4KPiBTbyBJJ20gd29uZGVyaW5nIGlmIHN1Y2ggd29ya2Fyb3VuZCB0byBhdm9p
ZCBidWlsZGluZyBvZiB1bm5lY2Vzc2FyeSBpbml0cmFtZnMKPiBpbWFnZXMgd291bGQgYmUgYWNj
ZXB0YWJsZSwgb3IgdW50aWwgdGhlcmUncyBhIHByb3BlciBzb2x1dGlvbiwgd2Ugc2hvdWxkCj4g
c2ltcGx5IGxpdmUgd2l0aCB0aGUgYEZFQVRVUkVTICs9IHJhbWRpc2tgIGJhc2VkICJzb2x1dGlv
biIuCgpUaGFuayB5b3UgZm9yIHNoYXJpbmcgeW91ciBwYXRjaGVzLiBJIGhhZCBzdGFydGVkIGlt
cGxlbWVudGluZyBhCnNpbWlsYXIgc29sdXRpb24sIGJ1dCBxdWlja2x5IGFiYW5kb25lZCBteSB3
b3JrIHdoZW4gSSBzYXcgdGhlIGNvbW1pdHMKaW4geW91ciBzdGFnaW5nIHRyZWUuIEV2ZW4gdGhv
dWdoIEkgaGF2ZSBubyBhdXRob3JpdHksIEkgdGhpbmsgeW91cgpzb2x1dGlvbiBpcyBuaWNlIGFu
ZCBpdCBzb2x2ZXMgdGhlIHByb2JsZW0gYXQgaGFuZC4gSSBhcHBsaWVkIHlvdXIKcGF0Y2hlcyBh
bmQgbW9kaWZpZWQgbXQ3NjIwICsgdGhlIEhEUk0yMDAgdGFyZ2V0IGFjY29yZGluZ2x5LCBhbmQg
YXMKZXhwZWN0ZWQgSSBvbmx5IGdldCBvbmUgaW5pdHJhbWZzIGltYWdlLiBJIGFncmVlIHRoYXQg
YnVpbGRpbmcKaW5pdHJhbWZzIGZvciBkZXZpY2VzIHRoYXQgZG8gbm90IG5lZWQgaXQgaXMgcmVk
dW5kYW50IChJIHNlZSB0aGF0CmluaXRyYW1mcyBpcyBidWlsdCBmb3IgYWxsIG10NzYyMSB0YXJn
ZXRzIGZvciBleGFtcGxlKSwgc28gSSBhbSB2ZXJ5Cm11Y2ggaW4gZmF2b3Igb2YgbWVyZ2luZyB0
aGlzIHNlcmllcy4KCkJSLApLcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
