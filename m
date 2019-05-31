Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F603168E
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 23:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Yu23CgPw1D308MLJTClPVyYgTCAZ2CC0nz048Qx6JQ=; b=e6DQqW4/1qEWcf
	0SCl7I2vT/BYlBK7GdRgiODS7rFnz8PkELpyDCHT5dipMN6iLDGinnUiGJ36uGJjn9dW+jH5ihtHi
	ocj2Ymr/kDHz4QEv0FnV2mvcnsVo/YD5Z9phctKTEmInXboEnhdubdbjpcAeGURcTwfa20IXqNwxo
	C+yvlK34F8sEjRtUh9LTngSVVCbENkN8MS9NYtQkCO512di6xtkvnx0x37RFEgViu0lnRsZmeIrQB
	OQolb60MF5Y5Qr3Tbs0HPaub3ItC3dJfZO/vdIEYdm+TV8zNrqFxpKbFCDGTVr+QemuDKHxKQETka
	LDlr6uHG8EuYEE0mnsFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWows-0008Gf-Og; Fri, 31 May 2019 21:20:26 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWowl-0008G5-F7
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 21:20:21 +0000
Received: by mail-ot1-x344.google.com with SMTP id t24so10578885otl.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 May 2019 14:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=g+rSGIU0Nygw0KE15UU5VOUAbv+/fhzvimAC3bhaqQk=;
 b=kRqD4ISbQAA5cC0+nT9hyLAXzAGgrhcYATrg1qEs7btqkaWwzQUWENNnjOVPrXM6S4
 ZO+m4JBRTr0VSC3fhp5oreuoV/oxJt8wY9OmT6jIGbjIUIB+xzRSO1VBr1URWj0vLq6z
 Mz4oWyrQYoOPemKnJunOYhwYFqo8SgcQdxiwvdagZHBYVr1FtSz/fd37hDRnIBX5FZbi
 ioPUbTopKiPnzvwGmpQN52/bZI4Zsy9WFa+ZicHeS4pJVzKEv4WuRCuhxF1kgPII8iTF
 8+BoN7hEbVOtA99TIA/lwCoyD96OWXnyeBFjgu2BQXbV09bEGDryZziEfejJzZs1YMxm
 mTiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=g+rSGIU0Nygw0KE15UU5VOUAbv+/fhzvimAC3bhaqQk=;
 b=eqMzk8G3fFdW6Zqfppe0QEZgoM3IkYsFW4oGcLIJlorjiG0+mTeEIZekHYfQZjStyO
 ywNaHkCyzXgqEXfG+KG6jjDE2vjPjoMFNMyKgSRBeZZd4E6IkwFy0l6qE8NpeSdjbGgc
 dIksQ1jSft+32xevMVBCmRdxSubLnt9z0DJF7qTLCb3s0apJOcvZ9kcrid9b0ULxhLMA
 1qHKx4EWUVuyDN7yPkuwUHNpkxNc01K1Xt3EZ41Nl/b3Usfc15WVnUq0MNyg7LSZoxC0
 pLIKglL8smxgp5WAFZfa3TKN+tQj2oSxtT0MilZuW3dhQTZ026eMA/Pvu+58EcnlGQhH
 L1uw==
X-Gm-Message-State: APjAAAWJYJELmAvIKQd0ruYkH0Hi9bI+RypMiOBQVWaFlLraVVijJwUn
 VO/GDOMo7QaWinJcZokbFY/ws+ez3pJVcz09v/c=
X-Google-Smtp-Source: APXvYqwDCKkWx/3LBh3FkxhO7NvwQ9CN9qGo2nOdjbcuodiW4W5cDcx3uIJPJQGK+ZS2q6cGoWMIOS+mRguIfTy6Gjg=
X-Received: by 2002:a9d:201:: with SMTP id 1mr3281808otb.279.1559337613350;
 Fri, 31 May 2019 14:20:13 -0700 (PDT)
MIME-Version: 1.0
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz> <2839502.UJiEac7TxE@debian64>
In-Reply-To: <2839502.UJiEac7TxE@debian64>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 31 May 2019 14:20:03 -0700
Message-ID: <CAKxU2N_keQGNKtc2Z3C5H7ZpwZ_CbRVEhuEntQWKUCH8nEFt-Q@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_142019_509047_80285C19 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] gpio-button-hotplug: support
 interrupt properties
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCBNYXkgMzAsIDIwMTkgYXQgODowOSBBTSBDaHJpc3RpYW4gTGFtcGFydGVyIDxjaHVu
a2VleUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiBPbiBUaHVyc2RheSwgTWF5IDMw
LCAyMDE5IDEyOjAwOjI3IFBNIENFU1QgUGV0ciDFoHRldGlhciB3cm90ZToKPiA+IENocmlzdGlh
biBMYW1wYXJ0ZXIgPGNodW5rZWV5QGdtYWlsLmNvbT4gWzIwMTktMDUtMjkgMjE6NTg6MjldOgo+
ID4gPiBVcHN0cmVhbSBMaW51eCdzIGlucHV0IGdwaW8ta2V5cyBkcml2ZXIgc3VwcG9ydHMKPiA+
ID4gc3BlY2lmeWluZyBhIGV4dGVybmFsIGludGVycnVwdCBmb3IgYSBncGlvIHZpYSB0aGUKPiA+
ID4gJ2ludGVycnVwdHMnIHByb3BlcnRpZXMgYXMgd2VsbCBhcyBoYXZpbmcgc3VwcG9ydAo+ID4g
PiBmb3Igc29mdHdhcmUgZGVib3VuY2UuCj4gPgo+ID4gWy4uLl0KPiA+Cj4gPiBJJ3ZlIGp1c3Qg
Y2hlY2tlZCB0aGlzIG9uIGF0aDc5IChhcmNoZXItYzctdjUpIGFuZCBvbiByYW1pcHMvbXQ3NjIw
Cj4gPiAoYmRjb20sd2FwMjEwMC1zaykgd2l0aCBXUFMgYnV0dG9ucy4KPiA+Cj4gPiBBY2tlZC1i
eTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPgo+IENhbiB5b3UgdGVsbCBtZSB3aGF0
IHlvdSB0ZXN0ZWQ/IFdhcyBpdCB0aGUgc29mdHdhcmUgZGVib3VuY2U/Cj4gQmVjYXVzZSB0aGlz
IHNob3VsZCBiZSB0aGUgb25seSBiaXQgdGhhdCB3aWxsIGFmZmVjdCB0aGUgYXRoNzkKPiBwbGF0
Zm9ybSBJIHRoaW5rIChzaW5jZSBpdCBhbHJlYWR5IGhhcyBzdXBwb3J0IGZvciBpbnRlcnJ1cHRz
Cj4gdGhyb3VnaCB0aGUgZ3BpbyBjb250cm9sbGVyKS4KPgo+IEZyb20gd2hhdCBJIGNhbiB0ZWxs
LCByYW1pcHMgc2hvdWxkIHVzZSBncGlvLWtleXMtcG9sbGVkIGV4Y2x1c2l2bHkKPiBmb3Igbm93
LiBUaGlzIGlzIGJlY2F1c2UgdGhlIHJ0Mjg4MC1waW5tdXggZHJpdmVyIGRvZXNuJ3QgaW1wbGVt
ZW50Cj4gYW5kIGlycSBzdXBwb3J0ICh0aG91Z2ggc29tZSBvZiB0aGUgY2hpcHMgc2hvdWxkIHN1
cHBvcnQgaXQpLgo+IGFsbCBncGlvLWtleXMtcG9sbGVkIHNob3VsZCB3b3JrIGFzIGJlZm9yZS4K
VGhlIHVwc3RyZWFtIGRyaXZlciBmaXhlcyB0aGlzLiBTZWUKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3N0YWJsZS9saW51eC5naXQvdHJlZS9kcml2ZXJz
L2dwaW8vZ3Bpby1tdDc2MjEuYz9oPXY0LjE5LjQ3Cj4KPiBDaGVlcnMsCj4gQ2hyaXN0aWFuCj4K
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
