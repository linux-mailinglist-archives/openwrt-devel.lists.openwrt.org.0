Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D539211311
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 08:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uY0Qtm4M+ia2JuaJ0K/bNdIR6jioSAmUYmODEcI/UVs=; b=ghhMTM5qtWx1t3
	RkipIeRVQ1mbSN2IN6lbH4FSO8XfF08fQPe+9tY6G9xkFNBxvGYDTONbtIClsGWUEwyeK+gdAi7d2
	hQEhDGQEX92Nezza/NQGfT6kN4OBpzYjmEMbUC4hdUE6G/e/AKF8ho2gcKs1iWPQoASjQDCVC8Faj
	5695OGIzS1NrNpwPGqtnQe3wCIDhyElXw2oF4mRQWgca8P9h3Ie/FdDcYokPqQ9S+OeqCICu7GwMX
	XdzyexYdVHXTvk6sNVpBgXkq75XnxqTMSAJQAaNdHc6luk376u92YzTSVFXm962xTR9gc0PgxrqWD
	XfyF5s8xQZUokbjXQIAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM4ql-0005bp-MZ; Thu, 02 May 2019 06:05:43 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM4qZ-0005Sy-Uh
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 06:05:35 +0000
Received: by mail-yw1-xc41.google.com with SMTP id y131so726222ywa.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 May 2019 23:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UVaLr43FTzu62kN0kGVmfyg8WlBnDd+aLJU3jIwwJjA=;
 b=XvBo2sEKMEr8bqa7NHnZK7xlvb9OTJr1Gaec7mPKIYpQBedkh6rzRTeBFsOOwnHpq+
 43W+IpJphQm64Yc9fCSSi6mVlsLfoC+RT3d3lh/HEEBaPLct4xJiid3PWSnxseeQpKuR
 WHxsF7I4ea/0ADYQ5yUgVyOf6t3CiLYJu2t022sch5BOH4GOMUMilIFAlZ3AjDXXtNz2
 YQll+O5hW0hh9Ho8Cl8TGJ/nRIDg/fPxAJDzo9300LsFIvumkUz9Pe5Ez7dnENGmsTRJ
 ZqkCp2lnk9WX6bkgJRx2Uz7Akej1zRG3MoVnpH80mhKgrEBLHbT7xxpUSJzrsR4XQ44G
 IUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UVaLr43FTzu62kN0kGVmfyg8WlBnDd+aLJU3jIwwJjA=;
 b=a2jQcIGW3Jb0a34qJ36nJ9Z5uJsSNWyQzBJnBOEkUL69qaZ6Kt6aKDUC07BvUSsM9X
 Cc8/AkH7MW1UpBEFu6arOhpu1w+G8Ybb1RDmO5v4brFsCskfmxe+LmnoqQ/u9Ve8NcP3
 xMDKeaqLg+tmdF26QJVepK4HNeIKIkVIRjGFisX9x70d3h42Pa4U3hm+iXbDELDqxMLO
 1/iYU3JIyRPN4qkJd6V5z5N4i8+v+SSltG/2+WzJA4Mw4n8nZ1xKi4ifpn7Pr4EDRaAG
 Rwy41W92tH+fdiXzpfbWn6zR35Jz7L6DIODf6o9wph3JWWnoi1n/sOA6aYw7rikaFpMp
 3pvw==
X-Gm-Message-State: APjAAAVHPx5tkMBU2UChkL6xDGG0itmNe02cIMxFhmpnlk2U0bEjjnyh
 L2RuW9tumTimbcWN4QvdJQ3YQ1OJ/NLzFquqFqVl3HRAWeo=
X-Google-Smtp-Source: APXvYqxDsD2i13CWckPPNYF1S0AlBBYsljF4+jp9RZNanbejyu7zEO2t83uKnmLM+bHJZ0BEloeQXvShZtm/3Rs12oY=
X-Received: by 2002:a81:5f56:: with SMTP id t83mr1536760ywb.179.1556777130071; 
 Wed, 01 May 2019 23:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190501052321.11985-1-zajec5@gmail.com>
 <de57d2ea-3090-1f56-d4c1-9692b86707b1@wwsnet.net>
In-Reply-To: <de57d2ea-3090-1f56-d4c1-9692b86707b1@wwsnet.net>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 2 May 2019 08:05:19 +0200
Message-ID: <CACna6rypKGLs1eLSEzVUEh9i4=kNKnO80AxNEgmiKzEgLwyeMQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_230532_904946_73415DBD 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] procd: add procd_running() helper for
 checking running state
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCAxIE1heSAyMDE5IGF0IDE5OjA5LCBKby1QaGlsaXBwIFdpY2ggPGpvQG1laW4uaW8+
IHdyb3RlOgo+ID4gRnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+ID4K
PiA+IFRoaXMgc2hvdWxkIGJlIGhlbHBmdWwgZm9yIGltcGxlbWVudGluZyBzZXJ2aWNlX3J1bm5p
bmcoKSBpbiBwcm9jZCBpbml0Cj4gPiBzY3JpcHRzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFJh
ZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiA+IC0tLQo+ID4gIHBhY2thZ2Uvc3lz
dGVtL3Byb2NkL2ZpbGVzL3Byb2NkLnNoIHwgMTUgKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9z
eXN0ZW0vcHJvY2QvZmlsZXMvcHJvY2Quc2ggYi9wYWNrYWdlL3N5c3RlbS9wcm9jZC9maWxlcy9w
cm9jZC5zaAo+ID4gaW5kZXggNzJmMjVmZTBjMC4uYWRlNTVhMzQ0ZiAxMDA2NDQKPiA+IC0tLSBh
L3BhY2thZ2Uvc3lzdGVtL3Byb2NkL2ZpbGVzL3Byb2NkLnNoCj4gPiArKysgYi9wYWNrYWdlL3N5
c3RlbS9wcm9jZC9maWxlcy9wcm9jZC5zaAo+ID4gQEAgLTI2LDYgKzI2LDkgQEAKPiA+ICAjIHBy
b2NkX2Nsb3NlX2luc3RhbmNlKCk6Cj4gPiAgIyAgIENvbXBsZXRlIHRoZSBpbnN0YW5jZSBiZWlu
ZyBwcmVwYXJlZAo+ID4gICMKPiA+ICsjIHByb2NkX3J1bm5pbmcoc2VydmljZSwgW2luc3RhbmNl
XSk6Cj4gPiArIyAgIENoZWNrcyBpZiBzZXJ2aWNlL2luc3RhbmNlIGlzIGN1cnJlbnRseSBydW5u
aW5nCj4gPiArIwo+ID4gICMgcHJvY2Rfa2lsbChzZXJ2aWNlLCBbaW5zdGFuY2VdKToKPiA+ICAj
ICAgS2lsbCBhIHNlcnZpY2UgaW5zdGFuY2UgKG9yIGFsbCBpbnN0YW5jZXMpCj4gPiAgIwo+ID4g
QEAgLTM5OCw2ICs0MDEsMTggQEAgX3Byb2NkX2FkZF9pbnN0YW5jZSgpIHsKPiA+ICAgICAgIF9w
cm9jZF9jbG9zZV9pbnN0YW5jZQo+ID4gIH0KPiA+Cj4gPiArcHJvY2RfcnVubmluZygpIHsKPiA+
ICsgICAgIGxvY2FsIHNlcnZpY2U9IiQxIgo+ID4gKyAgICAgbG9jYWwgaW5zdGFuY2U9IiR7Mjot
aW5zdGFuY2UxfSIKPiA+ICsgICAgIGxvY2FsIHJ1bm5pbmcKPiA+ICsKPiA+ICsgICAgIGpzb25f
aW5pdAo+ID4gKyAgICAganNvbl9hZGRfc3RyaW5nIG5hbWUgIiRzZXJ2aWNlIgo+ID4gKyAgICAg
cnVubmluZz0kKF9wcm9jZF91YnVzX2NhbGwgbGlzdCB8IGpzb25maWx0ZXIgLWUgIkAuJHNlcnZp
Y2UuaW5zdGFuY2VzLiR7aW5zdGFuY2V9LnJ1bm5pbmciKQo+Cj4gUGFzcyAneyAibmFtZSI6ICIn
IiRzZXJ2aWNlIiciIH0nIGFzIGFyZ3VtZW50IHRvIHRoZSBsaXN0IGNhbGwgdG8gcmVkdWNlIHRo
ZSBhbW91bnQgb2Ygb3V0cHV0IHlvdQo+IG5lZWQgdG8gZmlsdGVyLgoKSXQncyBoYW5kZWQgYnk6
Cmpzb25fYWRkX3N0cmluZyBuYW1lICIkc2VydmljZSIKCmFuZCB0aGVuIF9wcm9jZF91YnVzX2Nh
bGwgdXNpbmcgdGhhdCBKU09OIHRoYXQgd2FzIGJ1aWx0IGJlZm9yZSBjYWxsaW5nIGl0LgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
