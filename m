Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B291524F59
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 14:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUGyKC3FDZkg2izd2NfzU/IxlqN5FhNK8FrQyvlhe0E=; b=FfMEo2qQdWK2vR
	pF7qD4CgOMB4arsXXFq+V4kXZMrh+qAC47h6LbIlKuk2vdmwwRQZoDchnUwGOdmCOhzCNMYs1qxV7
	ErVPEqN9x4zakdw0CHWaf71gIabjVXOy5fjlgk/ZqkcZcaZZF7MYQpWsaCGEdlFgXc0woGeh1U0cl
	ToTr37QsKvYuE3/fqq3TMT4m7QOSbjjSb2AQ75IlY5zl48xYCwOT7Aq4stJNBy9yE/BtpzdkEAS7E
	JRAVk2nT54cAJbQwd2HMxAJ4wEka64RgIgOaDhT35pB3VIWM//Df8u9oj+Aa+MHhCNyN1bZVSieUm
	rOYBedytYwC9Rs6ujq/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4JH-00029g-Rk; Tue, 21 May 2019 12:56:03 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4J9-00028V-Ul
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 12:55:57 +0000
Received: by mail-ot1-x341.google.com with SMTP id i2so10839000otr.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 May 2019 05:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cli2ZSeTqAEhN+0dqj+FQUAN1p342MIdOt3psBXAg9U=;
 b=VpYHE9NS/0kepgZMjw3NDydBlDMkX/NWOYZ/8/BlFhqCAJGDXnHPQNNNsr/g5nIA1X
 PcbUtX8pzJCSOiWFXv62FDnKz9v6mqkHRuYiAaLugPTnmKe+cgOLVK5NxR8m91UzX0yB
 gO9E7XUm1Wx5vucE6FcIUSc23/Iegtqv+dUiFuFDheXuGpCnsjKFDzasF3GdZVUyKJM7
 R9SdydBeGe/dKaGdYl5FHPoESLHZOYY9Sxtc9tUI3takSGpANxZScOhft+EcBvWN02et
 62UN7pAMiHU1ouUJ24mJX9yeZlPDtNU6aMjAJfri0megvo9zJFKh0e1lSpr13dXzhG5P
 Gl6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cli2ZSeTqAEhN+0dqj+FQUAN1p342MIdOt3psBXAg9U=;
 b=DkOMe4KpnH5xaWdHYpM6JLFq2RiVQYQXTOWv+rF5o02NTcXMHTN0onAr7N5/FMAdBH
 uPgnKrb5rkLB3db9QWWvp7jx3WBghxayKXiWyjITEFcn/hQUAePqRUaPwzB/L+jY8N1t
 XJj3JmRWMdVm7g2wvi8fgMllqukAMYZT25+brGAnkJMVMFa4i9Sy92Wjy5c96DfrnmJE
 GTpNvI5drGo8WlGwxPkBSirek+uZvUd3sWXd92vUOIZks2/GStAB5ys2TdXKGeUlYfAF
 hNrAUxB86qsSvddslCIYmbSp/tOUf6bdomaD1K7KNZpwWtJouRjmzgITXHG5t4nuY9IP
 JHiA==
X-Gm-Message-State: APjAAAWECA/tc1G5WIGOs7KUh0qtPzp8kjO/+L9OZoIGjcjJuhNCMbQO
 kUYgrpDQNZGHj24KRLbcITv/lCPYinN4M9dj5HO6fgWTiboazw==
X-Google-Smtp-Source: APXvYqyNH2Y7cVIPIUSPEv11o6aXdIxw5CHOAawpfDnVgnmLFcefuLJNHKUl3xH1JqYCcKsMJy+ygBkAVk0+XVxSRR0=
X-Received: by 2002:a9d:5a86:: with SMTP id w6mr20656903oth.82.1558443354445; 
 Tue, 21 May 2019 05:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
In-Reply-To: <1558368805-19484-1-git-send-email-ynezz@true.cz>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Tue, 21 May 2019 14:55:42 +0200
Message-ID: <CAOdf3goqqUUXc7pM8wMR=edshXdJAfqEzUi5_wGSnSyJk-P7sg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_055556_023015_AEA896F3 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
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
Cc: Stephan Mueller <smueller@chronox.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCkxlIGx1bi4gMjAgbWFpIDIwMTkgw6AgMTg6MTQsIFBldHIgxaB0ZXRpYXIgPHlu
ZXp6QHRydWUuY3o+IGEgw6ljcml0IDoKPgo+IEhpLAo+Cj4gdGhpcyBwYXRjaCBzZXJpZXMgaXMg
YW4gUkZDIHdoaWNoIGF0dGVtcHRzIHRvIGZpeCBzb21lIG9mIHRoZSBjdXJyZW50Cj4gdXJhbmRv
bS1zZWVkIGJhc2VkIGZsYXdzLgo+Cj4gRmlyc3QsIHNpbXBseSB3cml0aW5nIHRvIC9kZXYvdXJh
bmRvbSBkb2VzIG5vdCBpbmNyZWFzZSB0aGUga2VybmVsJ3MKPiBlbnRyb3B5IGNvdW50LCB0aGlz
IGNhc3VzZXMgcHJvY2Vzc2VzIG9idGFpbmluZyByYW5kb21uZXNzIHRvIGJsb2NrLgo+IFBhcnRp
Y3VsYXJseSBwcm9jZXNzZXMgdXNpbmcgT3BlblNTTCdzIFJBTkRfYnl0ZXMoKSB3aWxsIGJsb2Nr
IHVudGlsIHRoZQo+IGtlcm5lbCBlbWl0cyAncmFuZG9tOiBjcm5nIGluaXQgZG9uZScuIFRoaXMg
Y2FuIHRha2UgdXB3YXJkcyBvZiB0d2VudHkKPiBtaW51dGVzLgoKMjAgbWludXRlcyBzZWVtcyBl
eGNlc3NpdmUsIGlzbid0IG9uZSBvZiB0aGUgcHJvY2VzcyBibG9ja2luZyBib290ID8KCj4KPiBB
Y2NvcmRpbmcgdG8gcmFuZG9tKDQpIHRoZSBlbnRyb3B5IGNvdW50IGlzIG9ubHkgaW5jcmVhc2Vk
IHdoZW4gdXNpbmcgdGhlCj4gUk5EQURERU5UUk9QWSBpb2N0bCwgd2hpY2ggdXJhbmRvbS1zZWVk
IGN1cnJlbnRseSBkb2Vzbid0IHVzZSB3aGVuIGZlZWRpbmcgdGhlCj4ga2VybmVsIFJORy4KCndl
IGNvdWxkIHVzZSBSTkRBRERFTlRST1BZLCBidXQgYXMgSSdtIG5vIGNyeXB0b2dyYXBoZXIsCkkg
anVzdCBpbWl0YXRlZCB3aGF0IHdhcyBkb25lIGluIGRlYmlhbiBiZWZvcmUgc3lzdGVtZCBhbmQg
aW4gc3lzdGVtZAphdCB0aGUgdGltZQoocmVhZCBhIHNlZWQgd2hlbiByYW5kb20gcG9vbCBpcyBp
bml0aWFsaXplZCwgZmVlZCBpdCBvbiBuZXh0IGJvb3QpCgpPbmUgb2YgdGhlIGlzc3VlIGlzIHRo
YXQgaWYgeW91IHRyeSB0byBnZW5lcmF0ZSBhIG5ldyBzZWVkLCB5b3UgYXJlCmp1c3QgcmVhZGlu
ZyBhIGhhc2ggb2YgdGhlIHNlZWQgeW91IGluamVjdGVkIHNlY29uZHMgZWFybGllciB3aXRoCm1h
eWJlIGZldyBuZXcgYml0cyBvZiBlbnRyb3B5Cgo+Cj4gU2Vjb25kLCB1cmFuZG9tLXNlZWQgaXMg
dXNpbmcgL2V0Yy91cmFuZG9tLnNlZWQgZmlsZSB0byBzZWVkIHRoZSBrZXJuZWwncyBSTkcKPiBt
YWNoaW5lcnkgdXBvbiBldmVyeSBib290LiBUaGUgcHJvYmxlbSBpcywgdGhhdCB0aGlzIGZpbGUg
aXMgY3JlYXRlZCBvbmx5IG9uY2UKPiBkdXJpbmcgZmlyc3QtYm9vdCBhbmQgdGhlbiByZXVzZWQg
b24gZXZlcnkgY29uc2VjdXRpdmUgYm9vdCwgc28gcHJldHR5IG11Y2gKPiBzdGF0aWMuCgpKdXN0
IGZvciB0aGUgcmVjb3JkLCB0aGlzIGlzIHRoZSBkZWZhdWx0IHNldHRpbmcsIHlvdSBjYW4gY2hh
bmdlIHlvdXIKY29uZmlnIHRvIGdlbmVyYXRlIGEgbmV3IG9uZSBhdCBlYWNoIGJvb3QKKHRoZSB3
b3JyeSB3YXMgdGhhdCB3ZSB3b3VsZCB3ZWFyIG9mZiB0aGUgZmxhc2ggdG9vIGZhc3QpCgo+Cj4g
U28gdGhpcyBwYXRjaCBzZXJpZXMgcmVtb3ZlcyB1cmFuZG9tLXNlZWQgcGFja2FnZSBpbiBmYXZv
ciBvZiB1cm5nZCwgd2hpY2ggaXMKPiBuZXcgbWljcm8gbm9uLXBoeXNpY2FsIHRydWUgcmFuZG9t
IG51bWJlciBnZW5lcmF0b3IgKHN5c3RlbSBzZXJ2aWNlKSBiYXNlZCBvbgo+IHRpbWluZyBqaXR0
ZXIuCgpIYXZpbmcgYSBzZWVkIGZpbGUgbmV2ZXIgaHVydHMsIHNvIEkgd291bGQga2VlcCBpdAoK
Pgo+IFVzaW5nIHRoZSBKaXR0ZXIgUk5HIGNvcmUsIHRoZSB1cm5nZCBwcm92aWRlcyBhbiBlbnRy
b3B5IHNvdXJjZSB0aGF0Cj4gZmVlZHMgaW50byB0aGUgTGludXggL2Rldi9yYW5kb20gZGV2aWNl
IGlmIGl0cyBlbnRyb3B5IHJ1bnMgbG93LiBJdAo+IHVwZGF0ZXMgdGhlIC9kZXYvcmFuZG9tIGVu
dHJvcHkgZXN0aW1hdG9yIHN1Y2ggdGhhdCB0aGUgbmV3bHkgcHJvdmlkZWQKPiBlbnRyb3B5IHVu
YmxvY2tzIC9kZXYvcmFuZG9tLgo+Cj4gVGhlIHNlZWRpbmcgb2YgL2Rldi9yYW5kb20gYWxzbyBl
bnN1cmVzIHRoYXQgL2Rldi91cmFuZG9tIGJlbmVmaXRzIGZyb20KPiBlbnRyb3B5LiBFc3BlY2lh
bGx5IGR1cmluZyBib290IHRpbWUsIHdoZW4gdGhlIGVudHJvcHkgb2YgTGludXggaXMgbG93LAo+
IHRoZSBKaXR0ZXIgUk5HZCBwcm92aWRlcyBhIHNvdXJjZSBvZiBzdWZmaWNpZW50IGVudHJvcHku
Cgp3aHkgbm90IHVzZSBqaXR0ZXJlbnRyb3B5IFJORyB0aGF0IGlzIGluIGtlcm5lbCBzaW5jZSA0
LjIgPwpodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvY29tbWl0L2JiNTUzMGU0MDgy
NDQ2YWFjM2EzZDY5NzgwY2Q0ZGJmYTQ1MjAwMTMKCkkgaGF2ZW4ndCBoYWQgdGltZSB0byByZWFk
IGFsbCB0aGUgcGFwZXJzIGZyb20gU3RlcGhhbiBNdWxsZXIsIGJ1dCBJCmRvbid0IGtub3cgaG93
IHNhZmUgJiB0ZXN0ZWQgSml0dGVyIFJORyBpcyBvbiBBTEwgYXJjaGl0ZWN0dXJlcwpGb3IgZXhh
bXBsZSB0aGlzIGNvbW1lbnQgZG9lc24ndCBpbnNwaXJlIG1lCmh0dHBzOi8vZ2l0aHViLmNvbS90
b3J2YWxkcy9saW51eC9jb21taXQvYmI1NTMwZTQwODI0NDZhYWMzYTNkNjk3ODBjZDRkYmZhNDUy
MDAxMyNkaWZmLThlMDc5OGUwNWM4ZGNhM2FhOTAwNzUwNGM4N2NlZTczUjEyNQo+IElmIHJhbmRv
bV9nZXRfZW50cm9weSBkb2VzIG5vdCByZXR1cm4gYSB2YWx1ZSAod2hpY2ggaXMgcG9zc2libGUg
b24sCj4gZm9yIGV4YW1wbGUsIE1JUFMpLCBpbnZva2UgX19nZXRuc3RpbWVvZmRheQo+IGhvcGlu
ZyB0aGF0IHRoZXJlIGFyZSB0aW1lcnMgd2UgY2FuIHdvcmsgd2l0aC4KClJlZ2FyZHMKRXRpZW5u
ZQoKPgo+Cj4gU29tZSBSTkcgaW5pdCB0aW1lIG51bWJlcnMgZnJvbSBxY2E5NTYzIChUUC1MaW5r
IEFyY2hlciBDNyB2NSk6Cj4KPiAgWyAgIDEyLjA0NTY5M10gcmFuZG9tOiBjcm5nIGluaXQgZG9u
ZSAgICAgICAgKHVybmdkKQo+ICBbICAxMjAuMDQzMTMyXSByYW5kb206IGNybmcgaW5pdCBkb25l
ICAgICAgICAodXJhbmRvbS1zZWVkKQo+Cj4gRmxhc2ggc3BhY2UgZGV0YWlsczoKPgo+ICB1cm5n
ZDogICAgICAgICsgNDU3OSBiCj4gIGdldHJhbmRvbTogICAgLSAxNjM1IGIKPiAgdXJhbmRvbS1z
ZWVkOiAtICA4NDEgYgo+ICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRpZmYgICAgICAgICAg
KyAyMTAzIGIKPgo+IENjOiBTdGVwaGFuIE11ZWxsZXIgPHNtdWVsbGVyQGNocm9ub3guZGU+Cj4g
Q2M6IER1c3RpbiBMdW5kcXVpc3QgPGQubHVuZHF1aXN0QHRlbXBlcmVkbmV0d29ya3MuY29tPgo+
Cj4gUGV0ciDFoHRldGlhciAoNSk6Cj4gICB1cm5nOiBhZGQgbWljcm8gbm9uLXBoeXNpY2FsIHRy
dWUgUk5HIGJhc2VkIG9uIHRpbWluZyBqaXR0ZXIKPiAgIHVib3g6IG1vdmUgZ2V0cmFuZG9tIGlu
dG8gc2VwYXJhdGUgZ2V0cmFuZG9tIHBhY2thZ2UKPiAgIGJhc2UtZmlsZXM6IG1vdmUgdXJhbmRv
bSBzZWVkIGJpdHMgaW50byBzZXBhcmF0ZSBwYWNrYWdlCj4gICBidWlsZDogYWRkIHVyYW5kb20t
c2VlZCB0byB0aGUgZGVmYXVsdCBwYWNrYWdlcyBzZXQKPiAgIGF0aDc5OiBtYWtlIHVybmdkIGRl
ZmF1bHQgUk5HIHNlZWQgc291cmNlCj4KPiAgaW5jbHVkZS90YXJnZXQubWsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICBwYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZp
bGUgICAgICAgICAgICAgICAgICAgICAgICB8IDExICsrKystCj4gIHBhY2thZ2UvYmFzZS1maWxl
cy9maWxlcy9ldGMvaW5pdC5kL3VyYW5kb21fc2VlZCAgIHwgMTIgLS0tLS0tCj4gIC4uLi9iYXNl
LWZpbGVzL2ZpbGVzL2xpYi9wcmVpbml0LzgxX3VyYW5kb21fc2VlZCAgIHwgMjQgLS0tLS0tLS0t
LS0KPiAgcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vdXJhbmRvbV9zZWVkICAgICAgICAg
fCAyMCAtLS0tLS0tLS0KPiAgcGFja2FnZS9zeXN0ZW0vdWJveC9NYWtlZmlsZSAgICAgICAgICAg
ICAgICAgICAgICAgfCAxNyArKysrKystLQo+ICBwYWNrYWdlL3N5c3RlbS91cmFuZG9tLXNlZWQv
TWFrZWZpbGUgICAgICAgICAgICAgICB8IDMyICsrKysrKysrKysrKysrKwo+ICAuLi4vdXJhbmRv
bS1zZWVkL2ZpbGVzL2V0Yy9pbml0LmQvdXJhbmRvbV9zZWVkICAgICB8IDEyICsrKysrKwo+ICAu
Li4vdXJhbmRvbS1zZWVkL2ZpbGVzL2xpYi9wcmVpbml0LzgxX3VyYW5kb21fc2VlZCB8IDI0ICsr
KysrKysrKysrCj4gIC4uLi9zeXN0ZW0vdXJhbmRvbS1zZWVkL2ZpbGVzL3NiaW4vdXJhbmRvbV9z
ZWVkICAgIHwgMjAgKysrKysrKysrCj4gIHBhY2thZ2Uvc3lzdGVtL3VybmdkL01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgICAgIHwgNDggKysrKysrKysrKysrKysrKysrKysrKwo+ICBwYWNrYWdl
L3N5c3RlbS91cm5nZC9maWxlcy91cm5nZC5pbml0ICAgICAgICAgICAgICB8IDIxICsrKysrKysr
KysKPiAgdGFyZ2V0L2xpbnV4L2F0aDc5L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAg
fCAgMyArLQo+ICAxMyBmaWxlcyBjaGFuZ2VkLCAxODQgaW5zZXJ0aW9ucygrKSwgNjIgZGVsZXRp
b25zKC0pCj4gIGRlbGV0ZSBtb2RlIDEwMDc1NSBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRj
L2luaXQuZC91cmFuZG9tX3NlZWQKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHBhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9saWIvcHJlaW5pdC84MV91cmFuZG9tX3NlZWQKPiAgZGVsZXRlIG1vZGUgMTAw
NzU1IHBhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmluL3VyYW5kb21fc2VlZAo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgcGFja2FnZS9zeXN0ZW0vdXJhbmRvbS1zZWVkL01ha2VmaWxlCj4gIGNyZWF0
ZSBtb2RlIDEwMDc1NSBwYWNrYWdlL3N5c3RlbS91cmFuZG9tLXNlZWQvZmlsZXMvZXRjL2luaXQu
ZC91cmFuZG9tX3NlZWQKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHBhY2thZ2Uvc3lzdGVtL3VyYW5k
b20tc2VlZC9maWxlcy9saWIvcHJlaW5pdC84MV91cmFuZG9tX3NlZWQKPiAgY3JlYXRlIG1vZGUg
MTAwNzU1IHBhY2thZ2Uvc3lzdGVtL3VyYW5kb20tc2VlZC9maWxlcy9zYmluL3VyYW5kb21fc2Vl
ZAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgcGFja2FnZS9zeXN0ZW0vdXJuZ2QvTWFrZWZpbGUKPiAg
Y3JlYXRlIG1vZGUgMTAwNzU1IHBhY2thZ2Uvc3lzdGVtL3VybmdkL2ZpbGVzL3VybmdkLmluaXQK
Pgo+IC0tCj4gMS45LjEKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
