Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA86B2BD2C
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 04:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwxlhhKkgTnmrtoNUXhvKA/zp9xPyr0S9SGoy8GLx9Y=; b=c/wiRvcGVBSS/V
	ssmz86KLlfj58W+mq1ZHHVwkj8v35IQzfruO42DX6VNRWPihrQBIx6g0MwPKs4S8/j9kQaA+TC/rE
	1LSMOPd3Dn72oRXNUluE/Q2gEB1EIa+buW2sL3QFoo5PxjcaBb0my2R1m7AE3b3KomTF34drPDQ1/
	5qoz04cIXlxW6bvUPh/Gx1QOCm/6ns978/syxLmEACq4alX3BaWdSuzC2ngLa0F/IsMj8oV4kmuCW
	TjqwW5WVXR2S4dIujaACi45tOkoon5xQU2TjHN9H6G9B9nVb0cmx1lic3f0pKr293f1oKgVpOAbGB
	i3ycpDx7i1/ImFVl3YlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVRim-0000nZ-0k; Tue, 28 May 2019 02:20:12 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVRie-0008Tm-OH
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 02:20:06 +0000
Received: by mail-ot1-x341.google.com with SMTP id l17so16350497otq.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 19:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=g1mibxEt5nWvAwEAuiN2RtGzjEHl+Pphsl5L/m1cSzk=;
 b=WHbaWWPspbeHaXg2U0erygr9cAAXjFL+ktMIzVvz6YswITScHvll2mcV9ro4tniE3W
 5dh/VkVGkP0yk82+y9nNHoID45cwltyznEXaHHvPtLs8Y3vHlBbWypXI/k7Sn6glOyZm
 Ryi7k0lDtM/yuo26l8AWYNS7ou/I5/mYfxFUmB7KZFilMDzlMUXWkSmngAvvR7aOkWv9
 DJEdkaSc2QBsHle6iq5F9U6505W7weLmvbCFuW9g5lElb50vCkaTID45r4fJhlX893JO
 CytNZst64PbnO5Hor/qrI6ypMhxELGF0zG3QRPOlgVQaLFL7No8oydDTR5WmwbDWymVy
 BvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=g1mibxEt5nWvAwEAuiN2RtGzjEHl+Pphsl5L/m1cSzk=;
 b=X/Eg39WBTaCJgY6u85JVxc10KKHhnKgcSq865sGkAo1c5NoaRz9T8sj4/5GihTz70g
 oUx4Aeri204emUQ2tuuXJNsdog+a0tDoUcJgq4SJlh+fZWaId42la4PUhJLIefjc5a4r
 R1pnIfaV/rgl+M5YlPIlsisKE9hchtPw99fjracPxXUieQjd4bl+ROgmheIltIPRf/an
 R1xal3ldnMaSZWVo0LTBA7CheaOPl8eGpFa4fbW1+DKG17w5RDHAhercLwBJz6wIi+2z
 gKXcydQenMEjpB/P8mlVoAOgl+dGIqciu2ZVKmgqdDHdxRvCPtvat54/mpO2ABwBZslK
 S/6g==
X-Gm-Message-State: APjAAAXkOZKW4ABrx8BUAQ5Prfh10U0xPYvQr9VfNybxrhNFRTNP8apW
 OOB9XUXvK/vNJrcVEse7S/GmjgHUCHX7VWc0q89EixGj
X-Google-Smtp-Source: APXvYqxrVS+xaPApff/Br+xxaSECz1Pewxgy3Br0j0ccuWdpVlw3GlYYeD315LIh91riSPPiGQ4ZcdyzaIxrfAORMTI=
X-Received: by 2002:a9d:6a86:: with SMTP id l6mr11053797otq.93.1559010002854; 
 Mon, 27 May 2019 19:20:02 -0700 (PDT)
MIME-Version: 1.0
References: <1558992584-11997-1-git-send-email-ynezz@true.cz>
In-Reply-To: <1558992584-11997-1-git-send-email-ynezz@true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 27 May 2019 19:19:53 -0700
Message-ID: <CAKxU2N-XswSwUZHCLEAnoJ2Y_tkae2_KkZWzkC8ZP1G3k2fSmQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_192004_802430_83B9C596 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] 
	=?utf-8?q?=5BPATCH_0/4=5D_add_=CE=BCrngd=3A_true?=
	=?utf-8?q?_RNG_based_on_timing_jitter?=
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
Cc: =?UTF-8?Q?Stephan_M=C3=BCller?= <smueller@chronox.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCBNYXkgMjcsIDIwMTkgYXQgMjozMCBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IEhpLAo+Cj4gdGhpcyBwYXRjaCBzZXJpZXMgZml4ZXMgc29tZSBvZiB0
aGUgY3VycmVudCB1cmFuZG9tLXNlZWQgZmxhd3MgYW5kIGltcHJvdmVzCj4gc2l0dWF0aW9uIHdp
dGggbG93IGVudHJvcHkgaW4gdGhlIGtlcm5lbCBkdXJpbmcgdGhlIGJvb3QuCj4KPiBGaXJzdCwg
c2ltcGx5IHdyaXRpbmcgdG8gL2Rldi91cmFuZG9tIGRvZXMgbm90IGluY3JlYXNlIHRoZSBrZXJu
ZWwncyBlbnRyb3B5Cj4gY291bnQsIHRoaXMgY2FzdXNlcyBwcm9jZXNzZXMgb2J0YWluaW5nIHJh
bmRvbW5lc3MgdG8gYmxvY2suICBQYXJ0aWN1bGFybHkKPiBwcm9jZXNzZXMgdXNpbmcgT3BlblNT
TCdzIFJBTkRfYnl0ZXMoKSB3aWxsIGJsb2NrIHVudGlsIHRoZSBrZXJuZWwgZW1pdHMKPiAncmFu
ZG9tOiBjcm5nIGluaXQgZG9uZScuIFRoaXMgY2FuIHRha2UgdXB3YXJkcyBvZiB0d2VudHkgbWlu
dXRlcy4KPgo+IEFjY29yZGluZyB0byByYW5kb20oNCkgdGhlIGVudHJvcHkgY291bnQgaXMgb25s
eSBpbmNyZWFzZWQgd2hlbiB1c2luZyB0aGUKPiBSTkRBRERFTlRST1BZIGlvY3RsLCB3aGljaCB1
cmFuZG9tLXNlZWQgY3VycmVudGx5IGRvZXNuJ3QgdXNlIHdoZW4gZmVlZGluZyB0aGUKPiBrZXJu
ZWwgUk5HLgo+Cj4gU2Vjb25kLCB1cmFuZG9tLXNlZWQgaXMgdXNpbmcgL2V0Yy91cmFuZG9tLnNl
ZWQgZmlsZSB0byBzZWVkIHRoZSBrZXJuZWwncyBSTkcKPiBtYWNoaW5lcnkgdXBvbiBldmVyeSBi
b290LiBUaGUgcHJvYmxlbSBpcywgdGhhdCB0aGlzIGZpbGUgaXMgY3JlYXRlZCBvbmx5IG9uY2UK
PiBkdXJpbmcgZmlyc3QtYm9vdCBhbmQgdGhlbiByZXVzZWQgb24gZXZlcnkgY29uc2VjdXRpdmUg
Ym9vdCwgc28gcHJldHR5IG11Y2gKPiBzdGF0aWMuCj4KPiBTbyB0aGlzIHBhdGNoIHNlcmllcyBh
ZGRzIM68cm5nZCwgd2hpY2ggaXMgYSBuZXcgbWljcm8gbm9uLXBoeXNpY2FsIHRydWUgcmFuZG9t
Cj4gbnVtYmVyIGdlbmVyYXRvciAoc3lzdGVtIHNlcnZpY2UpIGJhc2VkIG9uIHRpbWluZyBqaXR0
ZXIuIE9uIGRldmljZXMgd2hpY2gKPiBwcm92aWRlIGEgcmVsaWFibGUgYW5kIHByZWNpc2UgZW5v
dWdoIHRpbWVyLCDOvHJuZ2QgY2FuIHByb3ZpZGUgc3VmZmljaWVudAo+IGVudHJvcHkuCj4KPiDO
vHJuZ2QgaXMgdXNpbmcgdGhlIEppdHRlciBSTkcgY29yZSB1bmRlciB0aGUgaG9vZCwgd2hpY2gg
cHJvdmlkZXMgYW4gZW50cm9weQo+IHNvdXJjZSB0aGF0IM68cm5nZCBmZWVkcyBpbnRvIHRoZSBM
aW51eCAvZGV2L3JhbmRvbSBkZXZpY2UgaWYgaXRzIGVudHJvcHkgcnVucwo+IGxvdy4gIEl0IHVw
ZGF0ZXMgdGhlIC9kZXYvcmFuZG9tIGVudHJvcHkgZXN0aW1hdG9yIHN1Y2ggdGhhdCB0aGUgbmV3
bHkKPiBwcm92aWRlZCBlbnRyb3B5IHVuYmxvY2tzIC9kZXYvcmFuZG9tLgo+Cj4gVGhlIHNlZWRp
bmcgb2YgL2Rldi9yYW5kb20gYWxzbyBlbnN1cmVzIHRoYXQgL2Rldi91cmFuZG9tIGJlbmVmaXRz
IGZyb20KPiBlbnRyb3B5LiBFc3BlY2lhbGx5IGR1cmluZyBib290IHRpbWUsIHdoZW4gdGhlIGVu
dHJvcHkgb2YgTGludXggaXMgbG93LCB0aGUKPiBKaXR0ZXIgUk5HIGJhc2VkIM68cm5nZCBwcm92
aWRlcyBhIHNvdXJjZSBvZiBzdWZmaWNpZW50IGVudHJvcHkuCj4KPiBTb21lIFJORyBpbml0IHRp
bWUgbnVtYmVycyBmcm9tIHFjYTk1NjMgKFRQLUxpbmsgQXJjaGVyIEM3IHY1KToKPgo+ICBbICAg
MTIuMDQ1NjkzXSByYW5kb206IGNybmcgaW5pdCBkb25lICAgICAgICAozrxybmdkKQo+ICBbICAx
MjAuMDQzMTMyXSByYW5kb206IGNybmcgaW5pdCBkb25lICAgICAgICAodXJhbmRvbS1zZWVkKQo+
Cj4gzrxybmdkIGJpbmFyeSBoYXMgNDU3OSBieXRlcyBvbiBhdGg3OS4KPgo+IEknbSBjcmVhdGlu
ZyBzZXBhcmF0ZSBwYWNrYWdlcyBmb3IgZ2V0cmFuZG9tIGFuZCB1cmFuZG9tLXNlZWQsIHNvIHRo
ZXkgY2FuIGJlCj4gcmVtb3ZlZCBlYXNpbHkgb24gcGxhdGZvcm1zIHdoZXJlIGVpdGhlciDOvHJu
Z2Qgb3IgYW55IG90aGVyIGhhcmR3YXJlIGJhc2VkIFJORwo+IHByb3ZpZGVzIGdvb2QgZW50cm9w
eS4gSSdtIG5vdCByZW1vdmluZyB1cmFuZG9tLXNlZWQgcGFja2FnZSBmcm9tIHRoZQo+IGRlZmF1
bHRzLCBiZWNhdXNlIGR1cmluZyB0aGUgdGVzdGluZyBvZiDOvHJuZ2QgSSd2ZSBmb3VuZCBvdXQs
IHRoYXQgZm9yIGV4YW1wbGUKPiBNZWRpYVRlayBNVDc2MjBBIHZlcjoyIGVjbzo2IChNSVBTIDI0
S0VjIFY1LjApIGRvZXNuJ3QgcHJvdmlkZSBoaWdoIHByZWNpc2lvbgo+IHRpbWVyIHdoaWNoIGlz
IG5lZWRlZCBmb3IgSml0dGVyIFJORyBzbyB0aGUgaW5pdGlhbGl6YXRpb24gb2YgSml0dGVyIFJO
Rwo+IGluc2lkZSDOvHJuZ2QgZW5kcyB3aXRoIGZvbGxvd2luZyBlcnJvcjoKPgo+ICBqZW50LXJu
ZyBpbml0IGZhaWxlZCwgZXJyOiAyIChFQ09BUlNFVElNRSkKPgo+IHNvIG9uIHN1Y2ggcGxhdGZv
cm1zIGl0IG1pZ2h0IHN0aWxsIGJlIHByb2JhYmx5IGJldHRlciB0byBzdGljayB0bwo+IHVyYW5k
b20tc2VlZCBhcyBhIGZhbGxiYWNrLiBUaGUgSml0dGVyIFJORyBpbXBsZW1lbnRzIGEgc3RhcnR1
cCB0ZXN0IHRoYXQgaXMKPiBpbnRlbmRlZCB0byBkZXRlY3Qgbm9uLWFwcHJvcHJpYXRlIHRpbWVy
cy4gSWYgaXQgaWRlbnRpZmllcyBzdWNoCj4gbm9uLWFwcHJvcHJpYXRlIHRpbWVycywgdGhlIEpp
dHRlciBSTkcgd2lsbCBkZWFjdGl2YXRlLiBUaHVzLCB0aGUgSml0dGVyIFJORwo+IGFsd2F5cyB0
cmllcyB0byByZWFjaCBhIHNlY3VyZSBzdGF0ZS4KPgo+IEkgYmVsaWV2ZSwgdGhhdCDOvHJuZ2Qg
aXMgZ29pbmcgdG8gaW1wcm92ZSBlbnRyb3B5IHNpdHVhdGlvbiBvbiBtb3N0IG9mIGN1cnJlbnQK
PiBwbGF0Zm9ybXMgT3BlbldydCBzdXBwb3J0cywgc28gSSB3b3VsZCBsaWtlIHRvIGVuYWJsZSBp
dCBhcyBkZWZhdWx0LiAgSGF2aW5nCj4gYW5vdGhlciBzb3VyY2Ugb2YgcmVsaWFibGUgbm9pc2Ug
aW4gdGhlIHN5c3RlbSBkb2Vzbid0IGh1cnQsIGl0IG9ubHkgaGVscHMuCj4KPiBJIHdvdWxkIGxp
a2UgdG8gbm90ZSwgdGhhdCBtb3N0IG9mIHRoaXMgc3R1ZmYgaXMgYmFzZWQgb24gdGhlIGFtYXpp
bmcgd29yawo+IGRvbmVbMV0gYnkgU3RlcGhhbiBNw7xsbGVyLCBJJ3ZlIGp1c3QgYmVuZCBpdCBv
dmVyIGFuZCBwYWNrYWdlZCBpdCBmb3IgT3BlbldydC4KPgo+IDEuIGh0dHA6Ly93d3cuY2hyb25v
eC5kZS9qZW50L2RvYy9DUFUtSml0dGVyLU5QVFJORy5odG1sClRlc3RlZCB0aGlzIG9uIGJvdGgg
bXQ3NjIxIGFuZCBUdXJyaXMgT21uaWEuIFdvcmtzIHByZXR0eSB3ZWxsLiBJbml0CmdldHMgZG9u
ZSBmYXN0LgoKVGhlIFR1cnJpcyBwZW9wbGUgbWlnaHQgd2FudCBzb21ldGhpbmcgbGlrZSB0aGlz
IG9yIHRoZXkgbmVlZCB0byBmaXgKaGF2ZWdlZCB0byBydW4gZWFybGllci4KPgo+IFBldHIgxaB0
ZXRpYXIgKDQpOgo+ICAgdXJuZzogYWRkIG1pY3JvIG5vbi1waHlzaWNhbCB0cnVlIFJORyBiYXNl
ZCBvbiB0aW1pbmcgaml0dGVyCj4gICB1Ym94OiBtb3ZlIGdldHJhbmRvbSBpbnRvIHNlcGFyYXRl
IGdldHJhbmRvbSBwYWNrYWdlCj4gICBiYXNlLWZpbGVzOiBtb3ZlIHVyYW5kb20gc2VlZCBiaXRz
IGludG8gc2VwYXJhdGUgcGFja2FnZQo+ICAgYnVpbGQ6IGFkZCB1cmFuZG9tLXNlZWQgYW5kIHVy
bmdkIHRvIGRlZmF1bHQgcGFja2FnZXMgc2V0Cj4KPiAgaW5jbHVkZS90YXJnZXQubWsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICBwYWNrYWdlL2Jhc2UtZmlsZXMv
TWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICB8IDExICsrKystCj4gIHBhY2thZ2UvYmFz
ZS1maWxlcy9maWxlcy9ldGMvaW5pdC5kL3VyYW5kb21fc2VlZCAgIHwgMTIgLS0tLS0tCj4gIC4u
Li9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9wcmVpbml0LzgxX3VyYW5kb21fc2VlZCAgIHwgMjQgLS0t
LS0tLS0tLS0KPiAgcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vdXJhbmRvbV9zZWVkICAg
ICAgICAgfCAyMCAtLS0tLS0tLS0KPiAgcGFja2FnZS9zeXN0ZW0vdWJveC9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgICAgICAgfCAxNyArKysrKystLQo+ICBwYWNrYWdlL3N5c3RlbS91cmFuZG9t
LXNlZWQvTWFrZWZpbGUgICAgICAgICAgICAgICB8IDMyICsrKysrKysrKysrKysrKwo+ICAuLi4v
dXJhbmRvbS1zZWVkL2ZpbGVzL2V0Yy9pbml0LmQvdXJhbmRvbV9zZWVkICAgICB8IDEyICsrKysr
Kwo+ICAuLi4vdXJhbmRvbS1zZWVkL2ZpbGVzL2xpYi9wcmVpbml0LzgxX3VyYW5kb21fc2VlZCB8
IDI0ICsrKysrKysrKysrCj4gIC4uLi9zeXN0ZW0vdXJhbmRvbS1zZWVkL2ZpbGVzL3NiaW4vdXJh
bmRvbV9zZWVkICAgIHwgMjAgKysrKysrKysrCj4gIHBhY2thZ2Uvc3lzdGVtL3VybmdkL01ha2Vm
aWxlICAgICAgICAgICAgICAgICAgICAgIHwgNDggKysrKysrKysrKysrKysrKysrKysrKwo+ICBw
YWNrYWdlL3N5c3RlbS91cm5nZC9maWxlcy91cm5nZC5pbml0ICAgICAgICAgICAgICB8IDIxICsr
KysrKysrKysKPiAgMTIgZmlsZXMgY2hhbmdlZCwgMTgyIGluc2VydGlvbnMoKyksIDYxIGRlbGV0
aW9ucygtKQo+ICBkZWxldGUgbW9kZSAxMDA3NTUgcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2V0
Yy9pbml0LmQvdXJhbmRvbV9zZWVkCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL2Jhc2Ut
ZmlsZXMvZmlsZXMvbGliL3ByZWluaXQvODFfdXJhbmRvbV9zZWVkCj4gIGRlbGV0ZSBtb2RlIDEw
MDc1NSBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi91cmFuZG9tX3NlZWQKPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IHBhY2thZ2Uvc3lzdGVtL3VyYW5kb20tc2VlZC9NYWtlZmlsZQo+ICBjcmVh
dGUgbW9kZSAxMDA3NTUgcGFja2FnZS9zeXN0ZW0vdXJhbmRvbS1zZWVkL2ZpbGVzL2V0Yy9pbml0
LmQvdXJhbmRvbV9zZWVkCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL3N5c3RlbS91cmFu
ZG9tLXNlZWQvZmlsZXMvbGliL3ByZWluaXQvODFfdXJhbmRvbV9zZWVkCj4gIGNyZWF0ZSBtb2Rl
IDEwMDc1NSBwYWNrYWdlL3N5c3RlbS91cmFuZG9tLXNlZWQvZmlsZXMvc2Jpbi91cmFuZG9tX3Nl
ZWQKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHBhY2thZ2Uvc3lzdGVtL3VybmdkL01ha2VmaWxlCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL3N5c3RlbS91cm5nZC9maWxlcy91cm5nZC5pbml0
Cj4KPiAtLQo+IDEuOS4xCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
