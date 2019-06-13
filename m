Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C3A432F9
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 08:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7jvFcJkPYIeq+8RbZgv+wZmN1clP2LA96jFHie+lx4=; b=KRA58hOCuAGMpp
	zGnq7pMNafEyVbZndTQY7jB4M+I5kkMvNlKQgrvzdMjLJzFvqJmdCisQdFSYHDN/MdPbLr8LQI9ry
	YV/gB7oim+iG1FDQrbtqTNr51/KVIwaLu+oqadl3nIaZwi5JBgOYFVTiOFm9Z4kMGtrI7rkwWhWCk
	Ev2DwcdVJeSgtJqufyrtGM0oa/DixC1CIQ2D8bpH0UZlYUxWSzt5pEywWexieYjak8cBwX9tU8yhs
	oB1CN/QRgNYperoIOIr1gEa4DzFIALeZ2br0QbC/rBoWTa5qXXI61GSOuASBt4hRZcvOYx/2NWDko
	AXJ7/G0HHby8KZNVo9qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJUB-0001nK-Mg; Thu, 13 Jun 2019 06:45:23 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJTs-0000zO-Bm
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 06:45:06 +0000
Received: by mail-qk1-x742.google.com with SMTP id b18so12017120qkc.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 23:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dMy2q/v6mIMVf/8pNSR3UpY5QAcxfiIXlar0qbfbYYA=;
 b=cM9rVft6unuaGBHDnheFIk4V2BQwgZqH6qGSKNmbZYW9JBbhjb+cbvLixfEaYNY9yY
 DcUqlJ6iyhvIMq0yeOJQJp8yug4dkng8R/c8/w8rSardI/+ZCBarh3mHTvVX+yaerriU
 RlVnHOipEzMq0lBxwCYE+RoAwCq5Af86XvJH32uKgebP0mTSDjnDzaBd+5KABJl9Uc2B
 Gq7c4E83SaD+JhDyPunq0HI8hE7Wuy8iuF/4AJCrmFUeYxnh3NZMfZTD04RQx43sq9ly
 2U3+7+T6/PE0H6H5Ogiv9JkePnLlV+wrWj8iC2EwVNJfNXtLBqJBc2A5A56WD1vYHn+X
 S1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dMy2q/v6mIMVf/8pNSR3UpY5QAcxfiIXlar0qbfbYYA=;
 b=aIBMwqZM241wRyDU/Yj7p8XUdI2g5pWdoU1S6xPXZcuOW8oG0GSu8mTQr8rtVF3zJi
 xXtSlXsDagxxz6Obc7RxbE8K8iN4WcLFzgpuEAMvgDbhYAFmADhHiQLLvp29zXT1RymH
 SDY7PVZ98bnYKMrhwrUEz6C/8kHNHdStddD3JtW4qUWYYZ5UP85FFy54CMtLD5qfPyVU
 GiVenCm/ooQ/ZqeF4qotlpaAZ5kDzntWXA53HOqHsWq+fbXtk/IJmJEv0Iz/N2Xm3nYY
 ODkNnwq9GyVwIMSYpuvrGDdwFXJ5oTKsa60i5wwsFEesMqwT5SW2vRL2jiN+pzQr0/m9
 2tUg==
X-Gm-Message-State: APjAAAXOZw27Ov1shz18VbfYvYQ6QAECmdEQa9SL/Q4KiO/5TVmMozmb
 bM91KmdoIwcgY5oGYN73N361mwiydJTPzyd69CARH3AWn98=
X-Google-Smtp-Source: APXvYqxYJ7mtdQsd7ZH5ndUfysfCdFSPCi51SsFFzUA7b7V0Wf9Q0NLGxRxibXKOb9x9Q46WyP6zHcCEetIdbkkR9ms=
X-Received: by 2002:a37:615:: with SMTP id 21mr49916609qkg.64.1560408302515;
 Wed, 12 Jun 2019 23:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190608114809.9480-1-avalentin@marcant.net>
 <20190608114809.9480-3-avalentin@marcant.net>
 <CAJLcKsEPFZWBcuTiVUL_mt1Qk6JXrg-q=jj7bvRDXESKrLVptw@mail.gmail.com>
 <5a1418f9-5b0c-ff52-2d60-01e382b62d08@marcant.net>
 <CAJLcKsH3XoYnAzUeJknk5QEr76sZvvkb=XM2nvUUjD-3BdTL0w@mail.gmail.com>
 <0427a156-11f1-429f-db41-1ca12b003a3e@marcant.net>
In-Reply-To: <0427a156-11f1-429f-db41-1ca12b003a3e@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 13 Jun 2019 08:44:51 +0200
Message-ID: <CAJLcKsFZxT7-Xq7v-GQqwMJ6jZ9KbHpxG4bHfrc6AEPrBQ11LA@mail.gmail.com>
To: Andre Valentin <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_234504_468929_D025CEB2 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/3] network/config: add xfrm
 interface support scripts
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBXZWQsIEp1biAxMiwgMjAxOSBhdCA4OjI4IFBNIEFuZHJlIFZhbGVudGluIDxhdmFs
ZW50aW5AbWFyY2FudC5uZXQ+IHdyb3RlOgo+Cj4gSGkgSGFucyEhCj4gQW0gMTEuMDYuMTkgdW0g
MjI6MTYgc2NocmllYiBIYW5zIERlZGVja2VyOgo+ID4gSGksCj4gPgo+ID4gT24gTW9uLCBKdW4g
MTAsIDIwMTkgYXQgODoxMCBQTSBBbmRyZSBWYWxlbnRpbiA8YXZhbGVudGluQG1hcmNhbnQubmV0
PiB3cm90ZToKPiA+Pgo+ID4+IEhpIEhhbnMsCj4gPj4KPiA+PiBhZnRlciB0ZXN0aW5nIHhmcm0g
dHVubmVscyBhIGJpdCBJIGZvdW5kIHRvIGJpZyBkaWZmZXJlbmNlcyBjb21wYXJlZCB0byBvdGhl
ciBjb252ZW50aWFsIHR1bm5lbHMuCj4gPj4gMSkgeGZybSB0dW5uZWwgaW50ZXJmYWNlcyBjYW5u
b3QgYmUgcmVwbGFjZWQgd2l0aCBuZXRsaW5rCj4gPj4gMikgeGZybSB0dW5uZWwgaW50ZXJmYWNl
cyBETyBOT1QgdmFuaXNoIGlmIHBhcmVudCBpcyBkZWxldGVkCj4gPj4KPiA+PiBUaGlzIGxlYWRz
IHRvIHNvbWUgZXJyb3JzIGFuZCBhIGxvb3AgaW4gaW50ZXJmYWNlIGNyZWF0aW9uLiBXaXRoIHRo
ZSBjaGFuZ2VzIGJlbG93LAo+ID4+IGl0IHdvcmtzIHNtb290aGx5IHdoZW4gbm90IGJvdW5kIHRv
IHBwcCBpbnRlcmZhY2VzICh1c2luZyBsYW4gaW5zdGVhZCksIHNlZToKPiA+PiBNb24gSnVuIDEw
IDExOjQyOjA2IDIwMTkgZGFlbW9uLm5vdGljZSBuZXRpZmQ6IHhmcm0wICgxNDI1NSk6IENvbW1h
bmQgZmFpbGVkOiBVbmtub3duIGVycm9yCj4gPj4gTW9uIEp1biAxMCAxMTo0MjowNiAyMDE5IGRh
ZW1vbi5ub3RpY2UgbmV0aWZkOiBJbnRlcmZhY2UgJ3hmcm0wJyBpcyBub3cgZG93bgo+ID4+IE1v
biBKdW4gMTAgMTE6NDI6MDYgMjAxOSBkYWVtb24ubm90aWNlIG5ldGlmZDogSW50ZXJmYWNlICd4
ZnJtMCcgaXMgc2V0dGluZyB1cCBub3cKPiA+PiBNb24gSnVuIDEwIDExOjQyOjA2IDIwMTkgZGFl
bW9uLm5vdGljZSBuZXRpZmQ6IHhmcm0wICgxNDI4MSk6IENvbW1hbmQgZmFpbGVkOiBVbmtub3du
IGVycm9yCj4gPj4gYW5kIHNvIG9uCj4gPj4+PiBXaGF0IGRvIHlvdSB0aGluaz8KPiA+IFRoZSBk
ZXNjcmlwdGlvbiBpcyBhIGJpdCBjcnlwdGljIHRvIG1lOyBjb3VsZCB5b3UgZXhwbGFpbiB3aGF0
IHdvcmtzCj4gPiBhbmQgd2hhdCBkb2VzIG5vdCB3b3JrIGFuZCB3aHkgPwo+IFNvcnJ5IGZvciBi
ZWluZyBjcnlwdGljLCBJIHRlbmQgdG8gdGhhdDstKSBPa2F5LCBJIGRvIHRoZSBmb2xsb3dpbmc6
Cj4gIyBpZnVwIHhmcm0wCj4gLi4uIHVzZSBpdAo+ICMgaWZkb3duIHhmcm0wCj4gVGhlIGludGVy
ZmFjZSBzdGlsbCBleGlzdHMgKGNoZWNrZWQgd2l0aCBpcCBsaW5rKQo+Cj4gTm93IEknbGwgZG8g
aWZ1cCBhZ2FpbiBhbmQgdGhpcyBoYXBwZW5zIGVuZGxlc3NseToKPiA+PiBNb24gSnVuIDEwIDEx
OjQyOjA2IDIwMTkgZGFlbW9uLm5vdGljZSBuZXRpZmQ6IHhmcm0wICgxNDI1NSk6IENvbW1hbmQg
ZmFpbGVkOiBVbmtub3duIGVycm9yCj4gPj4gTW9uIEp1biAxMCAxMTo0MjowNiAyMDE5IGRhZW1v
bi5ub3RpY2UgbmV0aWZkOiBJbnRlcmZhY2UgJ3hmcm0wJyBpcyBub3cgZG93bgo+ID4+IE1vbiBK
dW4gMTAgMTE6NDI6MDYgMjAxOSBkYWVtb24ubm90aWNlIG5ldGlmZDogSW50ZXJmYWNlICd4ZnJt
MCcgaXMgc2V0dGluZyB1cCBub3cKPiA+PiBNb24gSnVuIDEwIDExOjQyOjA2IDIwMTkgZGFlbW9u
Lm5vdGljZSBuZXRpZmQ6IHhmcm0wICgxNDI4MSk6IENvbW1hbmQgZmFpbGVkOiBVbmtub3duIGVy
cm9yCj4KPiBJbiBuZXRpZmQgdGhlIHhmcm0wIGludGVyZmFjZSBpcyBjcmVhdGVkIHdpdGggdGhl
IFJFUExBQ0UgZmxhZywgYnV0IHRoYXQgZG9lcyBub3Qgc2VlbSB0byB3b3JrLCBpdCBjYW5ub3Qg
YmUgcmVjcmVhdGVkIGFuZCBmYWlscy4KPiBUaGUgcmVzdWx0IGlzIHRoZSB1cHBlciBlcnJvciBy
ZXBlYXRpbmcuCj4gVGhhdCdzIHdoeSBJIHRoaW5rIGFib3V0IHRoZSBjYWxsIHRvICJpcCBsaW5r
IGRlbGV0ZSB4ZnJtMCIgYmVmb3JlIHByb3RvX2luaXRfdXBkYXRlIGNhbGwgYW5kIGluIHRoZSB0
ZWFyZG93biBjYWxsLgpBZGRpbmcgdGhlIGlwIGxpbmsgY2FsbHMgZG9lcyBub3QgbWFrZSBzZW5z
ZSB0byBtZSBhcyBuZXRpZmQgc2hvdWxkCnRha2UgY2FyZSBvZiBkZWxldGluZyB0aGUgeGZybSBp
bnRlcmZhY2VzCkFyZSB5b3Ugc3VyZSB0aGUgeGZybSBpbnRlcmZhY2VzIGNhbiBiZSBkZWxldGVk
IGJ5IHRoZSBpb2N0bCBjYWxsClNJT0NERUxUVU5ORUwgYXMgaXMgdGhlIGNhc2Ugbm93ID8KRm9y
IHRoZSBvdGhlciB0dW5uZWwgaW50ZXJmYWNlcyBsaWtlIHZ0aS9ncmUgZGVsZXRpb24gaXMgZG9u
ZSB2aWEgdGhlCm5ldGxpbmsgaW50ZXJmYWNlLgoKTmV4dCB0byB0aGF0IEkgbm90aWNlZCBhIHR1
bmxpbmsgaXMgc3BlY2lmaWVkIGluIHhmcm0uc2ggYnV0IG5vCnByb3RvX2FkZF9ob3N0X2RlcGVu
ZGVuY3kgaXMgYWRkZWQ7IGlzIHRoaXMgb24gcHVycG9zZSA/CgpIYW5zCj4KPiBBbmRyw6kKPgo+
Cj4gPgo+ID4gSGFucwo+ID4+Cj4gPj4gS2luZCByZWdhcmRzLAo+ID4+Cj4gPj4gQW5kcsOpCj4g
Pj4KPiA+Pgo+ID4+IEFtIDA5LjA2LjE5IHVtIDIxOjI3IHNjaHJpZWIgSGFucyBEZWRlY2tlcjoK
PiA+Pj4gT24gU2F0LCBKdW4gOCwgMjAxOSBhdCAxOjQ4IFBNIEFuZHLDqSBWYWxlbnRpbiA8YXZh
bGVudGluQG1hcmNhbnQubmV0PiB3cm90ZToKPiA+Pj4+Cj4gPj4+PiBUaGlzIHBhY2thZ2UgYWRk
cyBzY3JpcHRzIGZvciB4ZnJtIGludGVyZmFjZXMgc3VwcG9ydC4KPiA+Pj4+IEV4YW1wbGUgY29u
ZmlndXJhdGlvbiB2aWEgL2V0Yy9jb25maWcvbmV0d29yazoKPiA+Pj4+Cj4gPj4+PiBjb25maWcg
aW50ZXJmYWNlICd4ZnJtMCcKPiA+Pj4+ICAgICAgICAgb3B0aW9uIHByb3RvICd4ZnJtJwo+ID4+
Pj4gICAgICAgICBvcHRpb24gbXR1ICcxMzAwJwo+ID4+Pj4gICAgICAgICBvcHRpb24gem9uZSAn
VlBOJwo+ID4+Pj4gICAgICAgICBvcHRpb24gdHVubGluayAnd2FuJwo+ID4+Pj4gICAgICAgICBv
cHRpb24gaWZpZCAzMAo+ID4+Pj4KPiA+Pj4+IGNvbmZpZyBpbnRlcmZhY2UgJ3hmcm0wX3N0YXRp
YycKPiA+Pj4+ICAgICAgICAgb3B0aW9uIHByb3RvICdzdGF0aWMnCj4gPj4+PiAgICAgICAgIG9w
dGlvbiBpZm5hbWUgJ0B4ZnJtMCcKPiA+Pj4+ICAgICAgICAgb3B0aW9uIGlwNmFkZHIgJ2ZlODA6
OjEvNjQnCj4gPj4+PiAgICAgICAgIG9wdGlvbiBpcGFkZHIgJzEwLjAuMC4xLzMwJwo+ID4+Pj4K
PiA+Pj4+IE5vdyBzZXQgaW4gc3Ryb25nc3dhbiBJUHNlYyBwb2xpY3k6Cj4gPj4+PiAgICAgICAg
IGlmX2lkX2luID0gMzAKPiA+Pj4+ICAgICAgICAgaWZfaWRfb3V0ID0gMzAKPiA+Pj4+IC0tLQo+
ID4+Pj4gIHBhY2thZ2UvbmV0d29yay9jb25maWcveGZybS9NYWtlZmlsZSAgICAgIHwgMzggKysr
KysrKysrKysrKysrKysrCj4gPj4+PiAgcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL2ZpbGVz
L3hmcm0uc2ggfCA2NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPj4+PiAgMiBm
aWxlcyBjaGFuZ2VkLCAxMDMgaW5zZXJ0aW9ucygrKQo+ID4+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBwYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0vTWFrZWZpbGUKPiA+Pj4+ICBjcmVhdGUgbW9k
ZSAxMDA3NTUgcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL2ZpbGVzL3hmcm0uc2gKPiA+Pj4+
Cj4gPj4+PiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL01ha2VmaWxl
IGIvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL01ha2VmaWxlCj4gPj4+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+ID4+Pj4gaW5kZXggMDAwMDAwMDAwMC4uZWZjOTBjZjMxOAo+ID4+Pj4gLS0t
IC9kZXYvbnVsbAo+ID4+Pj4gKysrIGIvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL01ha2Vm
aWxlCj4gPj4+PiBAQCAtMCwwICsxLDM4IEBACj4gPj4+PiArCj4gPj4+PiAraW5jbHVkZSAkKFRP
UERJUikvcnVsZXMubWsKPiA+Pj4+ICsKPiA+Pj4+ICtQS0dfTkFNRTo9eGZybQo+ID4+Pj4gK1BL
R19WRVJTSU9OOj0xCj4gPj4+PiArUEtHX1JFTEVBU0U6PTEKPiA+Pj4+ICtQS0dfTElDRU5TRTo9
R1BMLTIuMAo+ID4+Pj4gKwo+ID4+Pj4gK2luY2x1ZGUgJChJTkNMVURFX0RJUikvcGFja2FnZS5t
awo+ID4+Pj4gKwo+ID4+Pj4gK2RlZmluZSBQYWNrYWdlL3hmcm0vRGVmYXVsdAo+ID4+Pj4gKyAg
U0VDVElPTjo9bmV0Cj4gPj4+PiArICBDQVRFR09SWTo9TmV0d29yawo+ID4+Pj4gKyAgTUFJTlRB
SU5FUjo9QW5kcmUgVmFsZW50aW4gPGF2YWxlbnRpbkBtYXJjYW50Lm5ldD4KPiA+Pj4+ICtlbmRl
Zgo+ID4+Pj4gKwo+ID4+Pj4gK2RlZmluZSBQYWNrYWdlL3hmcm0KPiA+Pj4+ICskKGNhbGwgUGFj
a2FnZS94ZnJtL0RlZmF1bHQpCj4gPj4+PiArICBUSVRMRTo9WEZSTSBJUHNlYyBUdW5uZWwgSW50
ZXJmYWNlIGNvbmZpZyBzdXBwb3J0Cj4gPj4+PiArICBERVBFTkRTOj0ra21vZC14ZnJtLWludGVy
ZmFjZQo+ID4+Pj4gK2VuZGVmCj4gPj4+PiArCj4gPj4+PiArZGVmaW5lIFBhY2thZ2UveGZybS9k
ZXNjcmlwdGlvbgo+ID4+Pj4gKyBYRlJNIElQc2VjIFR1bm5lbCBJbnRlcmZhY2UgY29uZmlnIHN1
cHBvcnQgKElQdjQgYW5kIElQdjYpIGluIC9ldGMvY29uZmlnL25ldHdvcmsuCj4gPj4+PiArZW5k
ZWYKPiA+Pj4+ICsKPiA+Pj4+ICtkZWZpbmUgQnVpbGQvQ29tcGlsZQo+ID4+Pj4gK2VuZGVmCj4g
Pj4+PiArCj4gPj4+PiArZGVmaW5lIEJ1aWxkL0NvbmZpZ3VyZQo+ID4+Pj4gK2VuZGVmCj4gPj4+
PiArCj4gPj4+PiArZGVmaW5lIFBhY2thZ2UveGZybS9pbnN0YWxsCj4gPj4+PiArICAgICAgICQo
SU5TVEFMTF9ESVIpICQoMSkvbGliL25ldGlmZC9wcm90bwo+ID4+Pj4gKyAgICAgICAkKElOU1RB
TExfQklOKSAuL2ZpbGVzL3hmcm0uc2ggJCgxKS9saWIvbmV0aWZkL3Byb3RvL3hmcm0uc2gKPiA+
Pj4+ICtlbmRlZgo+ID4+Pj4gKwo+ID4+Pj4gKyQoZXZhbCAkKGNhbGwgQnVpbGRQYWNrYWdlLHhm
cm0pKQo+ID4+Pj4gZGlmZiAtLWdpdCBhL3BhY2thZ2UvbmV0d29yay9jb25maWcveGZybS9maWxl
cy94ZnJtLnNoIGIvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL2ZpbGVzL3hmcm0uc2gKPiA+
Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNzU1Cj4gPj4+PiBpbmRleCAwMDAwMDAwMDAwLi5kZjI4ZDM4
NjEzCj4gPj4+PiAtLS0gL2Rldi9udWxsCj4gPj4+PiArKysgYi9wYWNrYWdlL25ldHdvcmsvY29u
ZmlnL3hmcm0vZmlsZXMveGZybS5zaAo+ID4+Pj4gQEAgLTAsMCArMSw2NSBAQAo+ID4+Pj4gKyMh
L2Jpbi9zaAo+ID4+Pj4gKwo+ID4+Pj4gK1sgLW4gIiRJTkNMVURFX09OTFkiIF0gfHwgewo+ID4+
Pj4gKyAgICAgICAuIC9saWIvZnVuY3Rpb25zLnNoCj4gPj4+PiArICAgICAgIC4gL2xpYi9mdW5j
dGlvbnMvbmV0d29yay5zaAo+ID4+Pj4gKyAgICAgICAuIC4uL25ldGlmZC1wcm90by5zaAo+ID4+
Pj4gKyAgICAgICBpbml0X3Byb3RvICIkQCIKPiA+Pj4+ICt9Cj4gPj4+PiArCj4gPj4+PiArcHJv
dG9feGZybV9zZXR1cCgpIHsKPiA+Pj4+ICsgICAgICAgbG9jYWwgY2ZnPSIkMSIKPiA+Pj4+ICsg
ICAgICAgbG9jYWwgbW9kZT0ieGZybSIKPiA+Pj4+ICsKPiA+Pj4+ICsgICAgICAgbG9jYWwgdHVu
bGluayBpZmlkIG10dSB6b25lCj4gPj4+PiArICAgICAgIGpzb25fZ2V0X3ZhcnMgdHVubGluayBp
ZmlkIG10dSB6b25lCj4gPj4+PiArCj4gPj4gaWYgZXhpc3RzIC4uIGlwIGxpbmsgZGVsICIkY2Zn
Igo+ID4+Cj4gPj4+PiArICAgICAgIHByb3RvX2luaXRfdXBkYXRlICIkY2ZnIiAxCj4gPj4+PiAr
Cj4gPj4+PiArICAgICAgIHByb3RvX2FkZF90dW5uZWwKPiA+Pj4+ICsgICAgICAganNvbl9hZGRf
c3RyaW5nIG1vZGUgIiRtb2RlIgo+ID4+Pj4gKyAgICAgICBqc29uX2FkZF9pbnQgbXR1ICIke210
dTotMTI4MH0iCj4gPj4+PiArCj4gPj4+PiArICAgICAgIFsgLXogIiR0dW5saW5rIiBdICYmIHsK
PiA+Pj4+ICsgICAgICAgICAgICAgICBwcm90b19ub3RpZnlfZXJyb3IgIiRjZmciIE5PX1RVTkxJ
TksKPiA+Pj4+ICsgICAgICAgICAgICAgICBwcm90b19ibG9ja19yZXN0YXJ0ICIkY2ZnIgo+ID4+
Pj4gKyAgICAgICAgICAgICAgIGV4aXQKPiA+Pj4+ICsgICAgICAgfQo+ID4+Pj4gKyAgICAgICBq
c29uX2FkZF9zdHJpbmcgbGluayAiJHR1bmxpbmsiCj4gPj4+PiArCj4gPj4+PiArICAgICAgIFsg
LXogIiRpZmlkIiBdICYmIHsKPiA+Pj4+ICsgICAgICAgICAgICAgICBwcm90b19ub3RpZnlfZXJy
b3IgIiRjZmciIE5PX0lGSUQKPiA+Pj4+ICsgICAgICAgICAgICAgICBwcm90b19ibG9ja19yZXN0
YXJ0ICIkY2ZnIgo+ID4+Pj4gKyAgICAgICAgICAgICAgIGV4aXQKPiA+Pj4+ICsgICAgICAgfQo+
ID4+Pj4gKyAgICAgICBqc29uX2FkZF9vYmplY3QgJ2RhdGEnCj4gPj4+PiArICAgICAgIFsgLW4g
IiRpZmlkIiBdICYmIGpzb25fYWRkX2ludCBpZmlkICIkaWZpZCIKPiA+Pj4+ICsgICAgICAganNv
bl9jbG9zZV9vYmplY3QKPiA+Pj4+ICsKPiA+Pj4+ICsgICAgICAgcHJvdG9fY2xvc2VfdHVubmVs
Cj4gPj4+PiArCj4gPj4+PiArICAgICAgIHByb3RvX2FkZF9kYXRhCj4gPj4+PiArICAgICAgIFsg
LW4gIiR6b25lIiBdICYmIGpzb25fYWRkX3N0cmluZyB6b25lICIkem9uZSIKPiA+Pj4+ICsgICAg
ICAgcHJvdG9fY2xvc2VfZGF0YQo+ID4+Pj4gKwo+ID4+Pj4gKyAgICAgICBwcm90b19zZW5kX3Vw
ZGF0ZSAiJGNmZyIKPiA+Pj4+ICt9Cj4gPj4+PiArCj4gPj4+PiArcHJvdG9feGZybV90ZWFyZG93
bigpIHsKPiA+Pj4+ICsgICAgICAgbG9jYWwgY2ZnPSIkMSIKPiA+PiBpcCBsaW5rIGRlbCAiJGNm
ZyIKPiA+Pj4+ICt9Cj4gPj4+PiArCj4gPj4+PiArcHJvdG9feGZybV9pbml0X2NvbmZpZygpIHsK
PiA+Pj4+ICsgICAgICAgbm9fZGV2aWNlPTEKPiA+Pj4+ICsgICAgICAgYXZhaWxhYmxlPTEKPiA+
Pj4+ICsKPiA+Pj4+ICsgICAgICAgcHJvdG9fY29uZmlnX2FkZF9pbnQgIm10dSIKPiA+Pj4+ICsg
ICAgICAgcHJvdG9fY29uZmlnX2FkZF9zdHJpbmcgInR1bmxpbmsiCj4gPj4+PiArICAgICAgIHBy
b3RvX2NvbmZpZ19hZGRfc3RyaW5nICJ6b25lIgo+ID4+Pj4gKyAgICAgICBwcm90b19jb25maWdf
YWRkX2ludCAiaWZpZCIKPiA+Pj4+ICt9Cj4gPj4+PiArCj4gPj4+PiArCj4gPj4+PiArWyAtbiAi
JElOQ0xVREVfT05MWSIgXSB8fCB7Cj4gPj4+PiArICAgICAgIFsgLWYgL2xpYi9tb2R1bGVzLyQo
dW5hbWUgLXIpL3hmcm1faW50ZXJmYWNlLmtvIC1vIC1kIC9zeXMvbW9kdWxlL3hmcm1faW50ZXJm
YWNlIF0gJiYgYWRkX3Byb3RvY29sIHhmcm0KPiA+Pj4gSSBtaXNzZWQgdGhlIGNoZWNrIGZvciAv
c3lzL21vZHVsZS94ZnJtX2ludGVyZmFjZSBpbiBteSBpbml0aWFsCj4gPj4+IHJldmlldzsgaXMg
dGhlcmUgYW55IHNwZWNpZmljIHJlYXNvbiBmb3IgdGhpcyBhZGRpdGlvbmFsIGNoZWNrIGJlc2lk
ZQo+ID4+PiB0aGUgeGZybV9pbnRlcmZhY2Uua28gY2hlY2sgPwo+ID4+Pgo+ID4+PiBIYW5zCj4g
Pj4+PiArfQo+ID4+Pj4gLS0KPiA+Pj4+IDIuMTEuMAo+ID4+Pj4KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
