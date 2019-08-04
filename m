Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F7D808E1
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 04:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5sSsMybbtuA5Zij7FJJtvlG/emkDFzR5nQQmRndpZio=; b=PJYVU7+RzIfbFSJFzmD60NrQP
	NYkzjPuccOiu9b1RVBfSfKK3YyNjWwhAfHytDrWVrqp4oR2IKNklTDtaH68DUzbCjt3fVO7HXGfkc
	AQOfLd8Va2gL3RujAm5A3ulbosBzlIJI3xgyJZXIkko2CmKgZEihq+EdQUgUjpdyemHVAivapI8sD
	XUCxvDspp2uRIAXRGoD2B5BFToQcm1pZbfjQkTCyoaDv0xtCOgGLVG1cToVlmgVvAbKASXlPfuceR
	SRUFYNSRtMERQBmixdN7aRJt1jsY3N/OkEPdBXCNzTa6Rgk4XaVhrrmmfHrTmE75zuJB+9uktYRIx
	PPxdHil0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu6Fc-0008RJ-OK; Sun, 04 Aug 2019 02:28:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu6FV-0008R0-7B
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 02:27:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so80988070wrm.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 03 Aug 2019 19:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=F8LbrPIQmF9uvb7xevwPgOi6g8Zs8uh1h6neoENY1eM=;
 b=dHEcSc829S2aXf/g3ADKb791JFf4Nz5kc+B3Ryc6RGa+xFCH8w/FC43goS7g3fQ7u5
 CGjMTVFyCXObRIjhFzmqJfNTfEs8jSite/lU3GE79zZcmbXcp/44I3xMvROoCekLZtxG
 Tj183F9XWys0i+JhjNq/ArMSqLjeiOJSqylVaLrrOvTXPWxg33ECktQ9TEqjAPPhwK/Q
 6DS+UIO6r/i8mGEYDM7aW+VvIzPw/UQUEBNBx2OYT+YBgN6X96pbdaScwgjS8oeDGWfu
 u7aEg7c3LNVQzNvuxF9DbDLugPei+NCdebNCVX2nox9c/xf+QiAF1pc7AVsb+NpZp7fB
 x+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=F8LbrPIQmF9uvb7xevwPgOi6g8Zs8uh1h6neoENY1eM=;
 b=tlbFbWObABefGDNLSsb1Vw6mCA+pnaT/DaVho8B6fuzA3eq2RbI9vlE1GWoVSRGG8/
 H6MLjCp2DtefrgJw/zubTNSUY3CaAKwTzP5LbuT0AK49T2NMGFexnd5KwTCquV6e3Cr/
 WCLjT1GZsDZhhXoAqCWl1SXUkgWDvxL0Vs3gWTtbW2KeeCY/tYE/Wi8UQ0Ok/0RgHbQ9
 6FnO+Uy9CD/Iq2Z2Zx4gXcQIwU8GJuKa8vxr71AE1pUPWrV5088wht1Ia4L/6tYGnC7n
 rj5F52+bOWF7Jb3To27oAmE/Osi0eYcsx2bVsbRzM+7LY2BH7kcHHLxhgoWYite7a9nd
 Vf0w==
X-Gm-Message-State: APjAAAX/bbyj74usv1frc1GkNyKszNU/JORe5BzyJnPvBXzZq8SPYO5F
 1UEsnCadsT8EF+9kYcjTLhQwCM6Y
X-Google-Smtp-Source: APXvYqwM69UkqgCwZtKmmXYphuOlt7rjUtmF0G3g2DLPigqUFh9VF9fMRQPYUjxXUEc92uSHyd8PvQ==
X-Received: by 2002:a05:6000:12c2:: with SMTP id
 l2mr38672645wrx.65.1564885670633; 
 Sat, 03 Aug 2019 19:27:50 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id s188sm74591816wmf.40.2019.08.03.19.27.49
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 03 Aug 2019 19:27:50 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20190723133717.20010-1-ynezz@true.cz>
 <8646063f-e4eb-f32f-381e-6fa2a847d0f8@hauke-m.de>
 <4d6009e6-090b-c513-aaa1-919dcd21a162@iki.fi>
 <539D9517-E258-4906-978F-99241CCF11C4@darbyshire-bryant.me.uk>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <f0f77b6d-e310-9146-9eef-970aec1592ba@gmail.com>
Date: Sun, 4 Aug 2019 04:27:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <539D9517-E258-4906-978F-99241CCF11C4@darbyshire-bryant.me.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_192753_264236_2F3BF313 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] base-files: make USE_PROCD=1 default
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

Ck9uIDAyLzA4LzE5IDE4OjE4LCBLZXZpbiAnbGRpcicgRGFyYnlzaGlyZS1CcnlhbnQgd3JvdGU6
Cj4KPj4gT24gMiBBdWcgMjAxOSwgYXQgMTY6MDAsIEhhbm51IE55bWFuIDxoYW5udS5ueW1hbkBp
a2kuZmk+IHdyb3RlOgo+Pgo+PiBIYXVrZSBNZWhydGVucyBraXJqb2l0dGkgMi44LjIwMTkga2xv
IDE3LjQyOgo+Pj4gT24gNy8yMy8xOSAzOjM3IFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+Pj4+
IFRyYW5zaXRpb24gcGVyaW9kIGZvciBpbml0IHNjcmlwdCBtaWdyYXRpb24gd2FzIGxvbmcgZW5v
dWdoLCBsZXQncwo+Pj4+IG1ha2UgVVNFX1BST0NEPTEgZGVmYXVsdCBub3cgc28gdGhlcmUncyBl
bm91Z2ggdGltZSB0byBjb252ZXJ0IHRoZQo+Pj4+IHJlbWFpbmluZyBzZXJ2aWNlcy9pbml0IHNj
cmlwdHMgZm9yIHRoZSBuZXh0IHJlbGVhc2UuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+Pj4+IC0tLQo+Pj4+ICAgcGFja2FnZS9iYXNlLWZp
bGVzL2ZpbGVzL2V0Yy9yYy5jb21tb24gfCAxMTMgKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+
Pj4+ICAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDY2IGRlbGV0aW9ucygtKQo+
Pj4+Cj4+PiBEbyB5b3Uga25vdyBob3cgbWFueSBwYWNrYWdlcyBpbiB0aGUgcGFja2FnZSBmZWVk
IGFuZCB0aGUgbWFpbgo+Pj4gcmVwb3NpdG9yeSBhcmUgc3RpbGwgbm90IHVzaW5nIHByb2NkPwo+
Pj4KPj4+IEV4dGVybmFsIHJlcG9zaXRvcmllcywgbm90IHRoZSBwYWNrYWdlIGZlZWQsIHdpbGwg
cHJvYmFibHkgYmUgYWZmZWN0ZWQKPj4+IG1vc3QsIGJ1dCBJIHRoaW5rIHdlIGRvIG5vdCBoYXZl
IHRvIGNhcmUgYW5kIHRoZXJlIHdlcmUgbWFueSB5ZWFycyB0bwo+Pj4gY29udmVydC4KPj4+Cj4+
PiBBY2tlZC1ieTogSGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+Cj4+Pgo+Pj4gSGF1
a2UKPj4+Cj4+IEkgZG8gbm90IHJlbWVtYmVyIHNlZWluZyBldmVyIGEgZ2VuZXJhbCBjYWxsIGZv
ciBjb252ZXJ0aW5nIHRoZSBvbGQgcGFja2FnZXMgdG8gdXNpbmcgcHJvY2QuIEluIHRoYXQgc2Vu
c2UgdGhpcyBwcm9wb3NlZCBjaGFuZ2UgdG8gc3dpdGNoIHRoZSBkZWZhdWx0IGNvbWVzIGEgYml0
IHN1cnBpc2UuCj4+Cj4+IFF1aWNrIHNlYXJjaCBpbiB0aGUgcGFja2FnZXMgZmVlZCByZXBvIHJl
dmVhbHMgdGhhdCB0aGVyZSBhcmUgMjgxIGluc3RhbmNlcyBvZiAiL2V0Yy9yYy5jb21tb24iIGFu
ZCBvbmx5IDIwNSBpbnN0YW5jZXMgb2YgVVNFX1BST0NELiBTbywgbGlrZWx5IGFib3V0IDc1IHBh
Y2thZ2VzIGluIHRoZSBwYWNrYWdlcyBmZWVkIHJlcG8gb25seSBhcmUgdXNpbmcgdGhlIG9sZCBz
eW50YXggd2l0aG91dCBwcm9jZC4KPj4KPj4gSGFzIGEgZGVjaXNpb24gYmVlbiBtYWRlIHRvIGRl
Y2xhcmUgdGhlIG9sZC1zdHlsZSBpbml0IGZpbGUgaW52YWxpZD8gV2lsbCBpdCBiZSBwb3NzaWJs
ZSB0byBzdGlsbCB1c2UgdGhlIHN5bnRheD8gV2hhdCBpcyB0aGUgbmV3ICJvdmVycmlkZSIgdG8g
aW5kaWNhdGUgdGhlIHVzYWdlIG9mIHRoZSBvbGQgc3ludGF4Pwo+Pgo+PiBPciB3aWxsIHRoZSBw
cm9wb3NlZCBjaGFuZ2UgZGlzYWJsZSB0aGUgcGFja2FnZXMgdXNpbmcgdGhlIG9sZCBpbml0IGZp
bGUgc3ludGF4IHRvdGFsbHk/Cj4gTXkgcmVhZGluZyBvZiB0aGUgY2hhbmdlIGlzIHRoYXQgb2xk
IHN5bnRheCBpcyBiYXNpY2FsbHkgZHJvcHBlZC4KPgo+IFdpc2ggZm9yOiAgV2Ugc2hvdWxkIGJl
IHVzaW5nIHByb2NkIGFuZCB0byB0aGF0IGVuZCBJIHN0YXJ0ZWQgbG9va2luZyBhdCBjb252ZXJ0
aW5nIHRoZSDigJhpbXBvcnRhbnQgdG8gbWXigJkgcGFja2FnZXM6IGRkbnMgJiBtaW5pdXBucGQu
Cj4KPiBSZWFsIGxpZmU6IERvY3VtZW50YXRpb24gaXMgY29uZnVzaW5nIHZzIHJlYWwgbGlmZSB3
aGljaCBpcyBqdXN0IHBsYWluIGRpZmZlcmVudC4gU2VlIGFkYmxvY2sgc3RhcnR1cCBzY3JpcHQg
YXMgYW4gZXhjZWxsZW50IGV4YW1wbGUgb2YgKioqKiB0aGF0IGp1c3QgaXNu4oCZdCBkb2N1bWVu
dGVkLgo+Cj4gSSBnYXZlIHVwIGFuZCBsZWZ0IHRoZSBwcm9jZXNzIGZlZWxpbmcgdmVyeSBhbmdy
eS4KPgo+Cj4gS0RCCj4KCkkgaGFkIGEgbG9vayBhdCB0aGF0IGluaXQgc2NyaXB0IGFuZCBJIHNl
ZSB0aGF0IG1vcmUgb3IgbGVzcyBldmVyeXRoaW5nIAppdCBkb2VzIGlzIGRvY3VtZW50ZWQgaW4g
dGhlIHdpa2kgCmh0dHBzOi8vb3BlbndydC5vcmcvZG9jcy9ndWlkZS1kZXZlbG9wZXIvcHJvY2Qt
aW5pdC1zY3JpcHRzCgphbmQgdGhlIGV4YW1wbGUgaGVyZSAKaHR0cHM6Ly9vcGVud3J0Lm9yZy9k
b2NzL2d1aWRlLWRldmVsb3Blci9wcm9jZC1pbml0LXNjcmlwdC1leGFtcGxlCgoKTWFpbiB0aGlu
Z3MgbWlzc2luZyBhcmUgdGhlIGJvb3QoKSBmdW5jdGlvbiBhbmQgdGhlIHVzZSBvZiAKRVhUUkFf
Q09NTUFORFMgYW5kIEVYVFJBX0hFTFAgdG8gYWRkIG1vcmUgY29tbWFuZHMgeW91IGNhbiBmaW5k
IGFzIApmdW5jdGlvbnMgdW5kZXIgdGhlIG5vcm1hbCBvbmVzLgoKSSB0aGluayBpdCBzaG91bGQg
c3RpbGwgYmUgZW5vdWdoIHRvIHBvcnQgb3ZlciB0aGUgZGRucyBhcyBpdCdzIApiYXNpY2FsbHkg
anVzdCBzdGFydGluZyBhbmQgc3RvcHBpbmcgYW4gZXh0ZXJuYWwgc2NyaXB0LCBidXQgZm9yIApt
aW5pdXBucGQgeW91IHdvdWxkIHByb2JhYmx5IGhhdmUgdG8gbW92ZQoKYWxsIHRoZSBsb2dpYyBm
cm9tIHRoZSBpbml0c2NyaXB0IHRvIGFuIGV4dGVybmFsIGhlbHBlciBzY3JpcHQgeW91IGNhbGwg
CmZyb20gcHJvY2QsIHNpbWlsYXIgdG8gd2hhdCBkZG5zIHBhY2thZ2UgZG9lcy4KCgpBbHRob3Vn
aCB5ZXMgSSBhZ3JlZSBvbiB0aGUgY29uY2VwdCwgcHJvY2QgaGFzIGphaWxzIGFuZCBvdGhlciAK
ZnVuY3Rpb25hbGl0eSB0aGF0IGlzbid0IGRvY3VtZW50ZWQgYW55d2hlcmUuCgpJJ3ZlIHNlZW4g
Y29tbWl0cyBmb3Igc3R1ZmYgYnV0IG5vdCBmb3VuZCBwYWNrYWdlcyB1c2luZyBpdC4KCgotQWxi
ZXJ0bwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
