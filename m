Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89562110146
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 16:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1IXox8jvOh2AnkAN5GEU+Srpmj+i8XAfSWpYoO7CZ8=; b=c6YXplzu5GoyTo
	fbOgXgBIJAbKkX9KadTb/sH+lRv8R/0qnG6ZAIvUefXWr998HLy9kkMxiQKxlujv4L9M91Rxqcxk8
	fJ24WIxx1lV/vq0snQKdsLnKeiK0/5KXQmaXVD5qk9MQTcOWKFK7TroF9qunClnU3sjYEcYG2mUMP
	Q9ePsW9MI9BRcWqIM1ZG3yxAilpKmZwl/tW6nIKOOjWvhJv9vHb7TG8LcCs5npnVhr2V1rTkkV8SM
	31VMdK52sciWBP9wINxzSr1j9ipEbzrQkgRPKEvfGiye/hN48qhQov8XbeNEbo4LQW7hPAvQqADH0
	f7jv+XpAEj+XLC9fgHig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icA6z-0007rn-BZ; Tue, 03 Dec 2019 15:29:13 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icA6q-0007rK-Na
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 15:29:06 +0000
Received: by mail-qv1-xf43.google.com with SMTP id b18so1674333qvy.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Dec 2019 07:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wxf/0+se/TSOGCLO2NhT8XbhuWU/SqhVUNO6Z7DFqPs=;
 b=s0uZsKjDf73BBFTANx5uHggHZPMBB4eBC/iQBIF3s04C4SGbYSn1l1iywDptqDRY1u
 HWc+bNMR8juMEES1hhVGmMepzjCwrlTE8v+skSzTSfXUDGJlqGv6yHBUumy0EEId/4et
 /r4zJsNLz6SLosd8l8iAc2QJmLuKGH2bowyFRIF0bf6z8zFdS4ju/NkJShPaGJ/+bZfd
 6DNB8s9Kjmsip/SEhKlKydPYjqryND8z4aGMAs2ktEYv6qwiLbbc5LKZCrhYvbpRq5n0
 MJWbS/564iWxDz8faEJ0ksvROA0U6eHiR0WZVeSnjlQhb/Q0wmoAJlsLwLxTaSkxRxxa
 vm3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wxf/0+se/TSOGCLO2NhT8XbhuWU/SqhVUNO6Z7DFqPs=;
 b=PclAX14mG75G1wLqpXVPw14bUfXmQ/v9pnyd03iSsyoOwOtH+4IL4wXL5XHwBilWmw
 gBORwwYzllSZM0TCGhMBAVKLAW5cqwvqJn23I57sgPi2S8ULa5ZAcbN5yKmnIJ43ELwE
 o2ohUeFho83E5duGTcvVH+ynhOqD2jEVajKoj1GvTdGmISnL9T6P2o3YLozYy+tskde+
 O0rw7PrLLl7b+OrjiMJ0rbT2rr0dCb03aHkXV8LiS1hGyT0qnaF7O72S6qKREmCwl407
 yXC+wotMWk6KJwlf3z7cIXYhXt3hDSiOn/ryzxhJ0jHUIyCZ8WPzCiL59tlx5UMJYjF1
 /0xg==
X-Gm-Message-State: APjAAAU8U4/OufmFX8VOBZdx+s/n8yP6kciQqO8ezoJlaI7a++y4cr5r
 BJaOkhWMLkARpqh+J0ZXuelq26OAnSdNug+DrajOjVALjjU=
X-Google-Smtp-Source: APXvYqxF75q9wfENpSJkmjTa0kh+yNrJmecl/eu4JzW7Zr/ghvT6eIKkOIOXqcO3cCTEcWI38aFmcqjOGC2c9gKM0sk=
X-Received: by 2002:a0c:e8c7:: with SMTP id m7mr5702967qvo.128.1575386943142; 
 Tue, 03 Dec 2019 07:29:03 -0800 (PST)
MIME-Version: 1.0
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
 <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
 <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
 <CAJLcKsHhA3_qaWN2bHv8tAJCg5Ymdj6rfRLN5Gb89AqDzn6hYA@mail.gmail.com>
 <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
In-Reply-To: <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Tue, 3 Dec 2019 16:28:52 +0100
Message-ID: <CAJLcKsH1EY3SRK3ByXBn8Exjb8bhSoJu94=7gK_-B6YHx1hvGg@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_072904_791946_070C2CF5 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] The meaning of Signed-off-by for netifd [Was:
 Re: [PATCH netifd] interface: warn if ip6hint is truncated]
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCBEZWMgMywgMjAxOSBhdCAzOjU5IFBNIFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xl
aW5lLWtvZW5pZy5vcmc+IHdyb3RlOgo+Cj4gSGVsbG8gSGFucywKPgo+IE9uIDEyLzMvMTkgODo1
MCBBTSwgSGFucyBEZWRlY2tlciB3cm90ZToKPiA+IE9uIEZyaSwgTm92IDI5LCAyMDE5IGF0IDk6
MjkgUE0gVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4gd3JvdGU6Cj4g
Pj4KPiA+PiBPbiAxMS8yOS8xOSA4OjUwIFBNLCBIYW5zIERlZGVja2VyIHdyb3RlOgo+ID4+PiBP
biBXZWQsIE5vdiAyMCwgMjAxOSBhdCA3OjExIFBNIFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xl
aW5lLWtvZW5pZy5vcmc+IHdyb3RlOgo+ID4+Pj4KPiA+Pj4+IFdoZW4gZm9yIGV4YW1wbGUgYSAv
NjAgaXMgYXNzaWduZWQgdG8gYSBuZXR3b3JrIHRoZSBsYXN0IDQgYml0cyBvZiB0aGUKPiA+Pj4+
IGlwNmhpbnQgYXJlIHVudXNlZC4gRW1pdCBhIHdhcm5pbmcgaWYgYW55IG9mIHRoZXNlIHVudXNl
ZCBiaXRzIGlzIHNldCBhcwo+ID4+Pj4gaXQgaW5kaWNhdGVzIHRoYXQgc29tZW9uZSBkaWRuJ3Qg
dW5kZXJzdGFuZCBob3cgdGhlIGhpbnQgaXMgdXNlZC4gKEFzIEkKPiA+Pj4+IGRpZCBlYXJsaWVy
IHRvZGF5IHJlc3VsdGluZyBpbiBzcGVuZGluZyBzb21lIHRpbWUgdW5kZXJzdGFuZGluZyB0aGUK
PiA+Pj4+IGNvZGUuKQo+ID4+PiBQYXRjaCBhcHBsaWVkIHdpdGggc29tZSBtaW5vciB0d2Vha3MK
PiA+Pj4gKGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPXByb2plY3QvbmV0aWZkLmdpdDthPWNv
bW1pdDtoPWU0NWIxNDA4Mjg0YzA1OTg0YjM4YTkxMGExZjBhMDdkNmM3NjEzOTcpOwo+ID4+Cj4g
Pj4gVGhlIHVwZGF0ZWQgd2FybmluZyBtZXNzYWdlIGlzIGZpbmUuCj4gPj4KPiA+Pj4gSSBhZGRl
ZCB5b3VyIFNvQiBhcyB0aGlzIHdhcyBtaXNzaW5nIGluIHRoZSBwYXRjaAo+ID4+Cj4gPj4gSSB3
b25kZXIgd2hhdCB0aGUgc2lnbmlmaWNhbmNlIG9mIHRoZSBTb0IgaXMgZ2l2ZW4gdGhhdCBhKSBp
dCdzIG5vdAo+ID4+IGRvY3VtZW50ZWQgKGF0IGxlYXN0IGluIHRoZSBuZXRpZmQgc291cmNlcykg
YW5kIGIpIGl0IHNlZW1zIHRvIGJlIG9rIHRvCj4gPj4gImZha2UiIHNvbWVvbmUgZWxzZSdzIFNv
QiBhbmQgYykgdGhlcmUgYXJlIHNldmVyYWwgY29tbWl0cyBpbiB0aGUgbmV3ZXIKPiA+PiBoaXN0
b3J5IG9mIG5ldGlmZCB0aGF0IGRvbid0IGhhdmUgYSBTb0Igb2YgZWl0aGVyIEF1dGhvciBvciBD
b21taXR0ZXIKPiA+PiAob3IgYm90aCkuCj4gPiBGb3IgZGV0YWlscyB3aHkgYSBTb0IgaXMgcmVx
dWlyZWQ7IHNlZQo+ID4gaHR0cHM6Ly9vcGVud3J0Lm9yZy9zdWJtaXR0aW5nLXBhdGNoZXMjc2ln
bl95b3VyX3dvcmsuCj4gPiBJZiB0aGVyZSdyZSBhbnkgY29tbWl0cyBpbiB0aGUgbmV0aWZkIHJl
cG8gd2hpY2ggZG9uJ3QgaGF2ZSBhIFNvQiB0aGlzCj4gPiBtdXN0IHJhdGhlciBzdGF5IGFuIGV4
Y2VwdGlvbiB0aGFuIGJlY29taW5nIGEgZ2VuZXJhbCBydWxlLgo+Cj4gb2ssIHNvIHlvdSBjbGFp
bSBteSBTb0IgbWVhbnMgdGhhdCAqSSogY29uZmlybWVkIHRoYXQgbXkgY2hhbmdlIGlzCj4gY29t
cGF0aWJsZSB0byB0aGUgbmV0aWZkJ3MgbGljZW5zZS4gSSBkaWRuJ3QgZG8gdGhhdCB0aG91Z2gu
Cj4KPiBFdmVuIGlmIGl0IHdhcyBtZSB3aG8gYWRkZWQgdGhhdCBsaW5lIEkgZG91YnQgaXMgaGFz
IGFueSByZWxldmFuY2UgZm9yCj4gbmV0aWZkIGJlY2F1c2Ugbm90aGluZyBpbiB0aGUgbmV0aWZk
IHNvdXJjZXMgZXhwbGFpbnMgd2hhdCBhbiBTb0IgbWVhbnMuCj4gQW5kIHRoZSBsaW5rIHlvdSBz
ZW50IGFwcGxpZXMgb25seSB0byBwYXRjaGVzIGZvciBvcGVud3J0LCBub3QgbmV0aWZkLgo+IChB
bHNvIGlmIHRoaXMgaXMgdGhlIG9ubHkgcGxhY2UgZm9yIG9wZW53cnQgd2hlcmUgdGhlIHNpZ25p
ZmljYW5jZSBvZiBhbgo+IFNvQiBpcyBkZXNjcmliZWQgSSB3b25kZXIgaWYgdGhpcyBpcyByZWxl
dmFudCBnaXZlbiB0aGF0IGZyb20gdGhlIFBPViBvZgo+IG9wZW53cnQuZ2l0IHRoZSB3aWtpIGlz
IGFuIGV4dGVybmFsIHJlc291cmNlIHRoYXQgY2FuIGJlIG1vZGlmaWVkIGJ5Cj4gYW55b25lLiBX
aGF0IGlmIHNvbWVvbmUgcmVtb3ZlcyBpdGVtIChkKSBmcm9tIHRoZSB3aWtpIG9yIGludHJvZHVj
ZXMgYW4KPiAoZSk/KQo+Cj4gRG9uJ3QgZ2V0IG1lIHdyb25nLCBteSBwYXRjaCBpcyBjb21wYXRp
YmxlIHRvIG5ldGlmZCdzIGxpY2Vuc2UuIEJ1dCBpZgo+IHlvdSB3YW50IHRoYXQgbmV0aWZkJ3Mg
bGljZW5zZSBzaXR1YXRpb24gc3RheXMgcmVhc29uYWJseSBzYWZlIGFuZAo+IGNsZWFuLCBpdCBJ
TUhPIGNhbm5vdCBiZSB0aGF0IHlvdSBhZGQgYSBTb0IgZm9yIHNvbWVvbmUgZWxzZSwgYW5kIGdp
dmUKPiB0aGF0IFNvQiBhIG1lYW5pbmcgdGhhdCBpc24ndCBkb2N1bWVudGVkIGZvciB5b3VyIHBy
b2plY3QgYW5kIGFzc3VtZXMKPiB0aGluZ3MgYWJvdXQgdGhhdCBzb21lb25lIGVsc2UgdGhhdCB5
b3UgY2Fubm90IGtub3cgZm9yIHN1cmUuIFNvIGlmIHlvdQo+IHJlcXVpcmUgYSBmb3JtYWxpc20s
IHBsZWFzZSBmb3JtYWxpemUgaXQgcHJvcGVybHkuIChPZiBjb3Vyc2UgSU5BTCwgYnV0Cj4gdGhh
dCdzIG15IHVuZGVyc3RhbmRpbmcgb2YgaG93IG9wZW4gc291cmNlIGxpY2Vuc2luZyB3b3Jrcy4p
Ckkgd29uJ3Qgd2FzdGUgZnVydGhlciBteSB0aW1lIGFuZCBlbmVyZ3kgb24gdGhpcyAuLi4KSSBh
Y3RlZCBpbiBnb29kIGZhaXRoIGFuZCBuZXh0IHRpbWUgaWYgSSBmaW5kIGEgcGF0Y2ggZnJvbSB5
b3Ugd2l0aG91dApTb0IgSSB3aWxsIGp1c3Qgc2ltcGx5IHJlamVjdCBpdCB0byBhdm9pZCBjb250
cmEgcHJvZHVjdGl2ZQpkaXNjdXNzaW9ucwpQYXRjaGVzIGRlbGl2ZXJlZCBmb3IgYWxsIHByb2pl
Y3RzIChuZXRpZmQvbGlidWJveC91YnVzLy4uLikKbWFpbnRhaW5lZCBieSBPcGVuV3J0IG11c3Qg
aGF2ZSBhIFNvQiBpbiBsaW5lIHdoYXQgaXMgZGVzY3JpYmVkIG9uIHRoZQpXaWtpOyB0aGlzIGRv
ZXMgbm90IHNvbGVseSBhcHBseSB0byB0aGUgT3BlbldydCByZXBvCgpUaGlzIGNsb3NlcyB0aGUg
ZGlzY3Vzc2lvbiBmb3IgbWUKCkhhbnMKPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
