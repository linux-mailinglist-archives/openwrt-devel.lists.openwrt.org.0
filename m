Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E53724BEC
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 11:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZrfbTYyy+/KkJupIwF+zmue6mCugA8Gv4dGhwcdfnKU=; b=GREeswMn3r0iNUXxqupTbu9KE
	WgDdKlMpbSzkNbhC1xOPQ8y8CvZz/wQuONLVU1n9wrHoEM6h/w+BP0NtwN6ETF0OZWOEe+yF5Wp9Y
	4/L/xNnd+g7coqIziz5JsomojYxvYffydNsvBY7OJgKFGjlwGNivPZPBLYW0AVchvB2DeNPNposWK
	jeHphtf+nndu1uK78wJ2Y70Yt2f902SCIMKmSrb5jDYpzG0aO8h3/M2BMbz7xxjFT8Vbc/nIi7zhm
	UtkfRPdG03TgHJbDFzJSvRlflEF8hZs4DZFyTlQwAug4U5I6sD6oz+gKztqnDHEez7nPo6rdOV2v/
	3t4magRLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1K4-0002Kq-J1; Tue, 21 May 2019 09:44:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1Jx-0002Js-6m
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 09:44:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id f204so2253172wme.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 May 2019 02:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=cF2Bn6H6XrxBCOUIeU9I6hZsD5RiJJ5E63pVBimMs3U=;
 b=YJ8wXXJ61MOIBqBvOjUUPfeCT+aQyFxzzpMtufIkHjUc6VLm4+87+B7BQnm+aOlZKg
 jpK22y0tbhvISXU3gBBsTWQyH45ZPpbgu+/5PckvFLk1Ggl3brd4TM6IwR3XWEMfYMx8
 a4+LEyBMLRJYzsDoBBp63nkwbGKUkO8K3V4vyZOikFZj20EYxPTnbv0Swztvp9RnwMiH
 NRLWg6W6TqwzoqlJfBfdXcbAv/exdgW9cLv5A6s4ql8hqY7PzjH05eVoenjcyXJpTWFm
 xgItPVE2cqw/9w1nyOWSVrhUn7qDjJFUIFXmrCfI73yR6ubuFd0aFMCP2TPdlc+FhyMY
 fFhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=cF2Bn6H6XrxBCOUIeU9I6hZsD5RiJJ5E63pVBimMs3U=;
 b=pE0D6bajeR8zz2p/cMZTihz0fIiO51MfhxcdX0d/Ub43+YqXqyeI3sARr7xBgYC+Pm
 BpCVQAEtHmdVW0W1rArqxrH+G/dxQZ1C7XDqSA2dDozoe9Cj77GVt5HG3wrHIQtKiAsn
 w+Phb6tFun9F04EO4BHlJud4Ee6OPo/qd/32HRnSMEr0auOVbzVkHCpO9CtC6R0MiyBb
 UHFU6MiT/UQUq4w1PtEyW7vblREHTaf4hllh0MSVOaWIVYmN2ZPFMZa5uYriEKI+UcFb
 g68axVhxpJ/KeV4UqAZSChi4jSq0shSaR7ZTuuHlbQ3ILuTLTfDJpdZb7JmELUcOwZot
 995Q==
X-Gm-Message-State: APjAAAVhW+vneqaKHYIxJ99GQX6WPy7PZ+P9p3qEPhRtdVlqMozxG2QX
 qpqkoqZsuVQ5kqkvIRJnnamSALBh
X-Google-Smtp-Source: APXvYqxUefnMQ+4OadqJ+tiQVrcwASQLjPIsgaFt7D9hkDbxB7qtmCEdVP64GxNxIa790xdhWMd+Fw==
X-Received: by 2002:a1c:9c03:: with SMTP id f3mr2511392wme.87.1558431871300;
 Tue, 21 May 2019 02:44:31 -0700 (PDT)
Received: from [192.168.111.140] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id n63sm2745746wmn.38.2019.05.21.02.44.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 02:44:31 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20190520202521.8587-1-linus.walleij@linaro.org>
 <20190520205644.GA536@meh.true.cz>
 <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <83f8c392-2304-f14d-2b42-571827ae8761@gmail.com>
Date: Tue, 21 May 2019 11:44:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_024433_269074_C599E5B5 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3] gemini: Support sysupgrade on DIR-685
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDIwLzA1LzE5IDIzOjQ4LCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+IE9uIE1vbiwgTWF5IDIw
LCAyMDE5IGF0IDEwOjU2IFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+
Cj4+IEFuZCBtZXJnZWRbMV0gaXQgaW50byBteSBzdGFnaW5nIHRyZWUsIHNvIHBsZWFzZSBjaGVj
ayBpdCBhbmQgbGV0IG1lIGtub3cgaWYKPj4gaXQncyBvayB3aXRoIHlvdSBvciBpZiB5b3UgcHJl
ZmVyIHRvIGdvIHdpdGggdjQsIHRoYW5rcy4KPiBUaGFua3MgbWFuLCBzb3JyeSBpZiBJJ20gYSBi
aXQgY29uZnVzZWQgYXJvdW5kIGhvdyB5b3Ugd2FudCB0aGUKPiBzeXN1cGdyYWRlIHRvIHdvcmsu
Cj4KPiBNYXliZSB3ZSBjb3VsZCBvcGVuIGEgZG9jdW1lbnRhdGlvbiBwYWdlIGZvciBuZXcgZGV2
aWNlcywgbGlrZQo+IGhlcmUgaXMgaG93IHdlIHdhbnQgeW91IHRvIGltcGxlbWVudCBzeXN1cGdy
YWRlLCBJIGhhZCBhIGhhcmQgdGltZQo+IHRvIGZpZ3VyZSBvdXQgdGhhdCBhbGwgd2FzIGNpcmN1
bGluZyBhcm91bmQgdGhlIHBsYXRmb3JtLnNoIHNjcmlwdCBhbmQKPiBob3cgdGhhdCB3YXMgY2Fs
bGVkIGZyb20gdGhlIGNvcmUgc3lzdXBncmFkZS4KPgo+IEkgY2FuIHN0YXJ0IHdoaWxlIEkgc3Rp
bGwgaGF2ZSBpdCBpbiBmcmVzaCBtZW1vcnkgYW5kIHlvdSBjYW4gY2hpbWUKPiBpbiBvbiBob3cg
eW91IHdhbnQgcGVvcGxlIHRvIGRvIGdlbmVyaWMgY2hlY2tzdW0gZXRjLgo+Cj4gWW91cnMsCj4g
TGludXMgV2FsbGVpago+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAoKClRvIGF2b2lkIGxvc2luZyBpbmZvcm1hdGlvbiwgSSdkIHN1Z2dl
c3QgdG8gd3JpdGUgaXQgZG93biBpbiBhIHdpa2kgcGFnZSAKaW4gdGhlCgpkZXZlbG9wZXIgc2Vj
dGlvbiBodHRwczovL29wZW53cnQub3JnL2RvY3MvZ3VpZGUtZGV2ZWxvcGVyL3N0YXJ0CgpvcGVu
IHRoaXMgKGN1cnJlbnRseSBlbXB0eSkgcGFnZSBhbmQgd3JpdGUgaXQgaGVyZQoKaHR0cHM6Ly9v
cGVud3J0Lm9yZy9kb2NzL2d1aWRlLWRldmVsb3Blci9zeXN1cGdyYWRlLXByb2Nlc3MKCllvdSBk
b24ndCBuZWVkIHRvIHdvcnJ5IHRvbyBtdWNoIGFib3V0IGZvcm1hdHRpbmcgYW5kIG1ha2luZyBp
dCBsb29rIGNvb2wsCgpJIHdpbGwgZG8gdGhhdCB3aGVuIHlvdSdyZSBkb25lLgoKSSdtIGFmcmFp
ZCB0aGF0IHdhaXRpbmcgZm9yIHBlb3BsZSB0byBkZWNpZGUgd2hlcmUgdGhleSB3YW50Cgp0byBi
aWtlc2hlZCB0aGUgZGV2ZWxvcGVyIGRvY3Mgd2lsbCBlbmQgbm93aGVyZSwganVzdCBsaWtlIGl0
IGRpZCBpbiB0aGUgCnBhc3QuCgoKLUFsYmVydG8KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
