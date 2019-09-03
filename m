Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D344EA75E2
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 23:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBcXA1I4hDYaspjssvdRaJ/hVvfYOTchPwjPq6PD0iA=; b=eaDFo6EYMyCdMY
	d+KmZRGY06wDMyO8LVKE4RFvcNrhcy+b1rYf32QqlzIZ7mIOnV0mpkQNgP/TliZLTENJozCD4DRim
	bICKb072eJeBOe0E/XfSrAnocWDcyef+tcZFm4nc/Lnif828vUkmaBCB3mF9Ofm2ddNAtBXj95iVq
	kAc07yCV0zaRhuxZ/IqipZp7OxClpw98/9sh2SuoYfkeRBD93zhdspL8ZfQgtP8xuhAgCVNcbfgez
	yzkQdPyvqFF7w0xAfSCFiMqBFu9vSiLCY0qKMsQpqQ4S399Y/wIICxC1zvii9EcfViEr2MIq8MAwd
	GC+yIgMTwqiSAWLOnWfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Fxa-0000oG-Qm; Tue, 03 Sep 2019 21:03:30 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FxO-0000mv-QG
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 21:03:20 +0000
Received: by mail-yw1-xc43.google.com with SMTP id 201so6350890ywo.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 14:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ikDYbzteMg92uSMCp33YSMujv70KzmFp2T6rwGBk3vg=;
 b=tRStQFCUrPJzK+KfLUpSYz7mHBJ9xNnnpa8TWJ6tz7HYZnQIykM4w29fx/crgRRw6d
 BgLLe+0dy53CU0hpD39OYww+jl2Sz/MZu+bMcNVJDoPYbxsFJcz5OzQwfmsiqq1KqTt3
 BMyqX1EOn0/4eIwS0RfV9L/xrmXkmwJkVrYKVLRTfoH0MhA4h2r2cTjn9KELnBtyPvwh
 9+naR7HkbIIGufpThchXQFjnzzM7MbxDs1eA7Afo4o2Pr3T02zJ9oBhJ5y1IYlABeuFa
 U8wwsO6Bxkwe7mlgJptRuAcAnIjhDnpmSrU+ie85dTMXBpqTlpcfIYSk8J7W4dzUUqIh
 SoBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ikDYbzteMg92uSMCp33YSMujv70KzmFp2T6rwGBk3vg=;
 b=bCxAJQG6IcHYOz/oOfedjYZ3Jvgy5t1UjhVPmRk6XbOcPjdBcwZPwe5KdCmB/Xjloa
 puLqSi+q8uQ/Gt0Fai1k6O01I4WXmjFXIqbYV0xhi9jy7PF07Ztl0dGU3VHvo7tz2dtE
 l76Gdpr8raPx7Fa3zHB23K4xS99xBLDqq86zFx7C39Mo5ZZw8YMBi+fJou9j66PaigG7
 EAzIHUu186WNtLgPyhy3v1l2BkOZedDIyNUZBa51wql+CsUGLouUc39vlFrPj9BlFAHI
 eGjyB4MQl0LPXZHRWYAqZRKoT4YrLTrbwQztDYC47fcoGl5GdNvU1XlQtRVvvgQgvD/w
 1doQ==
X-Gm-Message-State: APjAAAXpLIy5qEst8nkakXFdwTTWpoED8j4Dec25gX1ZhCacJSXSJNrT
 XJzkTXNyYSdWh2djYaj2/aLCCD+8yqT2VQmaFp4=
X-Google-Smtp-Source: APXvYqygZ2XxM3vRA2qGPoCQdZpG8HJyCd2NuOvwnDQM8zt9V7neFXyoahtUull0nEus5OSSSJV4lO61cCYowhIM4g4=
X-Received: by 2002:a81:8245:: with SMTP id s66mr16578406ywf.263.1567544597146; 
 Tue, 03 Sep 2019 14:03:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190830154607.6463-1-zajec5@gmail.com>
 <vg58MWhCCD22S7ItxInBzDdSa5ZSoM9zRuh5sFsP236d@mailpile>
 <1efc1c7c-d87e-753a-92d0-3fa5911805b9@softart-ge.com>
 <CACna6rz+O7gFLEMOykqtvUcp8git0rUGxKqc-+sqo7VTXSQwzw@mail.gmail.com>
 <CAHbBuxpC-_nwuUAgVRdFd_9cydLwRT3sVJroLrEYrv2Qwh9_zw@mail.gmail.com>
In-Reply-To: <CAHbBuxpC-_nwuUAgVRdFd_9cydLwRT3sVJroLrEYrv2Qwh9_zw@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 3 Sep 2019 23:03:06 +0200
Message-ID: <CACna6rzTsd1dXc34==Zmoj6oa8twQ9yOKBW3fzYkjcA1N_whyA@mail.gmail.com>
To: Luis Araneda <luaraneda@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_140318_853654_1346E0E0 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of
 broken firmware images
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Reiner Karlsberg <karlsberg@softart-ge.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCAzIFNlcCAyMDE5IGF0IDE4OjU3LCBMdWlzIEFyYW5lZGEgPGx1YXJhbmVkYUBnbWFp
bC5jb20+IHdyb3RlOgo+IE9uIFN1biwgU2VwIDEsIDIwMTkgYXQgNTowOSBBTSBSYWZhxYIgTWnF
gmVja2kgPHphamVjNUBnbWFpbC5jb20+IHdyb3RlOgo+ID4gT24gU3VuLCAxIFNlcCAyMDE5IGF0
IDA2OjEzLCBSZWluZXIgS2FybHNiZXJnIDxrYXJsc2JlcmdAc29mdGFydC1nZS5jb20+IHdyb3Rl
Ogo+ID4gPiBUaGlzIG5lZWRzIHRvIGJlIGhhbmRsZWQgdmVyeSBjYXJlZnVsbHksIG5vdCB0byBi
cmVhawo+ID4gPiBhY3R1YWwgdXNhZ2Ugb2YgLUYuCj4gPiA+IEkgaGFkIHRvIHVzZSAtRiBjb3Vw
bGUgb2YgdGltZXMsIHVzdWFsbHkgd2hlbiBkb3duZ3JhZGluZwo+ID4gPiBpbnN0YWxsZWQgZmly
bXdhcmUsIGJ1dCB3aXRoIGNoYW5nZSBvZiBuYW1lIG92ZXIgdGltZS4KPiA+ID4gVHlwaWNhbCBl
eGFtcGxlOiBDaGFuZ2Ugb2YgaW1hZ2UgbmFtZSBmb3IgdGhlIHpidC13ZTgyNi4KPiA+ID4gTmV2
ZXIgYW55IHByb2JsZW0gd2l0aCB1c2FnZSBvZiAtRiwgdGhvdWdoLgo+ID4gPgo+ID4gPiBCdXQg
SSBoYWQgc2V2ZXJhbCBwcm9ibGVtcyB3aXRoIG5vbi1jb21wbGV0aW9uIG9mCj4gPiA+IHZhbGlk
IHN5c3VwZ3JhZGUsIHdoaWNoIGV2ZW4gbGVmdCB0aGUgc3lzdGVtIGluIGluY29uc2lzdGVudCBz
dGF0ZSwKPiA+ID4gYXMgdGhlICItZiBrZWVwLnRhci5neiIgd2FzIGFwcGxpZWQsIGJ1dCBub3Qg
dGhlIG5ldyBpbWFnZSBpdHNlbGYuCj4gPiA+IE9yIChzaWxlbnRseSA/KSBubyBzeXN1cGdyYWRl
IGRvbmUsIGJlY2F1c2Ugb2YgbW91bnRlZCBibG9jayBkZXZpY2UKPiA+ID4gb3IgYWN0aXZlIHN3
YXAgZmlsZSBvbiBibG9jayBkZXZpY2UsIG9yIGFjdGl2ZSB3aWZpICg/KS4KPiA+ID4gV2hpY2gg
d2FzIGEgUElUQSBvbiByZW1vdGUgaW5zdGFsbGF0aW9ucy4KPiA+ID4KPiA+ID4gUXVlc3Rpb246
IEhvdyBhcmUgc3lzdXBncmFkZS1lcnJvcnMgcmVwb3J0ZWQvdG8gYmUgaGFuZGxlZCwgYXMgdXN1
YWxseSBhbHNvIGEgZmFpbGVkIHN5c3VwZ3JhZGUKPiA+ID4gdHJpZ2dlcmVkIGEgcmVib290ID8K
PiA+ID4gZG9jdW1lbnRhdGlvbiB2ZXJ5IHVuY2xlYXIgaGVyZSwgYXMgaXQgbG9va3MgbGlrZSwg
YmVoYXZpb3VyIGluIGNhc2Ugb2YgZXJycm8gY2hhbmdlZCBkdXJpbmcgdmVyc2lvbnMgb2Ygb3Bl
bndydC4KPiA+ID4KPiA+ID4gQmVzdCB3b3VsZCBiZSAiYXRvbWljIHN5c3VwZ3JhZGUiLCB3aXRo
IHN0YW5kYXJkIGVycm9yLWNvZGUgKCsxKSBvbiBleGl0IGluc3RlYWQgb2YgZXhwZWN0ZWQgcmVi
b290IGFmdGVyIHN1Y2Nlc3MuCj4gPiA+Cj4gPiA+IEkgYXBwcmVjaWF0ZSB0aGUgbmV3IHdvcmsg
b24gc3lzdXBncmFkZSwgYnV0IEkgYW0gYSBiaXQgYWZyYWlkIG9mIHJlZ3Jlc3Npb25zLgo+ID4K
PiA+IE5vIGJlaGF2aW9yIHdpbGwgY2hhbmdlIHVudGlsIHlvdSBleHBsaWNpdGx5IG1vZGlmeSB5
b3VyIHRhcmdldCdzCj4gPiAvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggdG8gc3RhcnQgY2FsbGlu
ZyBub3RpZnlfZmlybXdhcmVfYnJva2VuKCkgZm9yCj4gPiB3aGF0ZXZlciByZWFzb24gKGUuZy4g
dW5yZWNvZ25pemVkIGZpcm13YXJlIGltYWdlIGZvcm1hdCkuCj4gPgo+ID4gSSdtIHBsYW5uaW5n
IHRvIGltcGxlbWVudCBtb3JlIHZlcmJvc2Ugc3lzdXBncmFkZSByZXN1bHRzIGxhdGVyLiBJIHdh
cwo+ID4gdGhpbmtpbmcgYWJvdXQgdWJ1cyBtZXRob2QgcmVwbHlpbmcgd2l0aCBhIEpTT04gY29u
dGFpbmluZyBlcnJvciBjb2RlCj4gPiBhbmQgbWVzc2FnZS4gSSBzaG91bGQgcHJlcGFyZSBzb21l
IHBhdGNoIGZvciB0aGF0IGluIGEgbmV4dCB3ZWVrIG9yCj4gPiB0d28uCj4KPiBTaW5jZSB5b3Un
cmUgaW1wcm92aW5nIHN5c3VwZ3JhZGUgdG8gcmVqZWN0IHNvbWUgaW1hZ2VzLCBJJ20gdGhyb3dp
bmcgYW4gaWRlYSBJIGhhZCBzb21lIHRpbWUgYWdvIChubyBjb2RlLCBzb3JyeSkuCj4KPiBJIHdv
dWxkIGJlIGdyZWF0IGlmIHRoZXJlIGlzIHN1cHBvcnQgZm9yIGNlcnRhaW4gc3lzdXBncmFkZSBp
bWFnZXMgdG8gcmVxdWlyZSBhIHNldHRpbmdzIHJlc2V0ICh3aXRob3V0IHByZXNlcnZpbmcgdGhl
bSkuCj4gVGhlIGlkZWEgaXMgdG8gc3VwcG9ydCBzb21lIHVzZSBjYXNlcyB3ZXJlIHByZXNlcnZp
bmcgdGhlIHNldHRpbmdzIG1pZ2h0IGxlYXZlIHRoZSBkZXZpY2UgaW4gYSBzb2ZicmljayAvIG1p
c2NvbmZpZ3VyZWQgc3RhdGUuIFNvIGEgcmVzZXQgdG8gZGVmYXVsdHMgaXMgbWFuZGF0b3J5LCBs
aWtlIHRoZSByZWNlbnQgc2l0dWF0aW9uIHdoZW4gbWlncmF0aW5nIGEgY29uZmlndXJhdGlvbiBm
cm9tIHN3Y29uZmlnIHRvIERTQS4KPiBTdXJlLCBpdCBjb3VsZCBiZSBkb25lIGJ5IG1pZ3JhdGlv
bnMgc2NyaXB0cywgYnV0IHRoZXkgbWlnaHQgbm90IGJlIDEwMCUgcmVsaWFibGUgKGNvdmVyIGFs
bCBwb3NzaWJsZSB2YXJpYXRpb25zKS4KPgo+IE9uIHRoZSBpbXBsZW1lbnRhdGlvbiBzaWRlLCBp
dCBjb3VsZCBiZSBkb25lIHVzaW5nIGltYWdlIG1ldGFkYXRhIHRvIHN0b3JlIGFuIGludGVnZXIg
d2l0aCB0aGUgbWluaW11bSB2ZXJzaW9uIHJlcXVpcmVkLCB3aGljaCBjb3VsZCBiZSB1c2VkIGJ5
IHN5c3VwZ3JhZGUgdG8gY29tcGFyZSB0aGUgbG9jYWxseSBzdG9yZWQgdmFsdWUgYW5kIGNoZWNr
IGlmIGEgcmVzZXQgaXMgbWFuZGF0b3J5IG9yIG5vdC4KPiAodGhpcyBpcyBqdXN0IG9uZSBwb3Nz
aWJsZSBpbXBsZW1lbnRhdGlvbikKPgo+IE9mIGNvdXJzZSwgYW4gaW1wbGVtZW50YXRpb24gd291
bGQgbm90IGJlIHVzZWZ1bCBmb3IgdGhlIGN1cnJlbnQgaXNzdWUgb2Ygc3djb25maWctPkRTQSwg
YnV0IGl0IG1pZ2h0IGJlIHVzZWZ1bCBpbiB0aGUgZnV0dXJlICh3aG8ga25vd3Mgd2hhdCBtaWdo
dCBicmVhaykuCgpJIHNlZSBzb21lIHVzZS1jYXNlcyBmb3IgdGhhdC4gSSdsbCBpbXBsZW1lbnQg
dGhhdC4KCi0tIApSYWZhxYIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
