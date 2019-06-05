Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA23335D95
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 15:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdlQnIAt7zFW4pIvLfpbvemjSvTPLFLQyVDI9CBFxIU=; b=uuaWN5yjsJ15BD
	vqvgDuV6iJYWzBE7y5otTRzVLnGDxZMsHSRd4S2x9CeQOFg+Vk26FmOmp6zKhvu2DBIB0G0Cg3RYz
	wmxnFo06pSXTymJrOveXithF3W0HgDeqvHnsvU/zMah+Rq+sfh5/FKMXYXyR6svwjvyfY8Lr4e40G
	H3ldulwjDfsusICd+0CUNqXSTGvc5Bu4iY/9RoWKb3ynRmHYsvGkjEZt3i/KnOmu41NUJT0sKlLA5
	VvEnL5Dx8vER0EH8v66eHoJhIb4lBSr5rIDTBSN4ti1SX2t2xqlI0JWmfUy+Vjs/Go7yxgejJscdt
	SvrNvfBouFd6UkdqzmXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVi0-0000aQ-2P; Wed, 05 Jun 2019 13:12:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVht-0000Zu-P0
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 13:11:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id 16so2199982wmg.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Jun 2019 06:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=knS2gJgTKs+mFhCmiRLLNDJWQ+ilmcaTTceKqP0UYzg=;
 b=D6MsCpXCDYMyyEXtxS7VgLqWcxRkVDKI5Lfv0vfp9lxhGb/YamiRT8L500+ujfiHQy
 w+eTtHRFc96nXNADFfukSzo0qSh2Na0RRxZJnO3bx2SF5AbdnAGTNz3yFtQNZvBl+tm8
 IOW+JT9iTLIMJdFPqQXIGF9Xagq6qKlnwtPDt/qWScSMWmKnAwps+NaDq8L7FfIs16Kf
 qubJsTc9WjXjVxeNadxmkmLB83/JqhSiW/ZZbxXddMao/UrM9ZuYZMdPoSJENIcID69O
 8pqSgJ5J6qlcGRwOB8Rj1ONYmx0fXmeArkOEhBL2iow8MDJNfqpwSbuyk2Ljbh9eJKGf
 J1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=knS2gJgTKs+mFhCmiRLLNDJWQ+ilmcaTTceKqP0UYzg=;
 b=nOKY73Dlm4vWcv6Js57lGEQUMMtmBoyjLfXf8CJOV+M/2DOcvh9cW2JIlMNTi6vgUX
 K+3HLDrzaqdmqvuS8AriKC/N8Y3BfHO0JVOs+hqyFcMwqQmVRPE35LJh490OzX8U7/bK
 vCi8olv5XXwCSfMZ2wFwG5X3FqPlyQKQ+n9Av3CVWxHrqM+POgXk8watXgUQ1KeAeje8
 vDddvYJL2RDZt8n7j/yRI7RnsdQofx8sOUrMuZB+AyiVsqTg2/PUE3Vu9oyGewOXEvg5
 O9pF14E9oORDc6mwpbktp7xtpNv7bbyaTSJd3Ss3TQjmgy8N/+GfQAj+VrIW7hhMfj+P
 sFVg==
X-Gm-Message-State: APjAAAUWR7C15QDKvLaShArEzgeDswqggqP5JzZpUFDJ8gI/cIX2F36J
 AUfTDBVyGwrMWjCoFS0mLHxMDTNmc3DAkkX61Ws=
X-Google-Smtp-Source: APXvYqwEhgugB5V2Mo5GDxChC14O9LWveGclVtuPgqpwH19m+UjCfiSUgm1EMlqujFw3mm9rnGrhyevNFGdyryiS1Ck=
X-Received: by 2002:a1c:9906:: with SMTP id b6mr10467402wme.117.1559740316067; 
 Wed, 05 Jun 2019 06:11:56 -0700 (PDT)
MIME-Version: 1.0
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
 <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
 <CAOiHx=kNxYHxV2e+Cc5pY4V6FD+YuYxvK9V1U7iua_x5Uo30AA@mail.gmail.com>
 <522982e7-b056-a798-022f-a58155ad99bf@phrozen.org>
In-Reply-To: <522982e7-b056-a798-022f-a58155ad99bf@phrozen.org>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 5 Jun 2019 15:11:52 +0200
Message-ID: <CAOiHx=n8nJZ7hxocaNN+DmTwqMMNJnhKOi+xyiGP=5SHWdz3_g@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_061157_815302_E82E48D5 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Karl Palsson <karlp@tweak.net.au>, =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCA1IEp1biAyMDE5IGF0IDE0OjU4LCBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3plbi5v
cmc+IHdyb3RlOgo+Cj4KPiBPbiAwNS8wNi8yMDE5IDE0OjU0LCBKb25hcyBHb3Jza2kgd3JvdGU6
Cj4gPiBIaSwKPiA+Cj4gPiBPbiBXZWQsIDUgSnVuIDIwMTkgYXQgMTQ6MzMsIEpvaG4gQ3Jpc3Bp
biA8am9obkBwaHJvemVuLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAwNS8wNi8yMDE5IDEzOjM1
LCBLYXJsIFBhbHNzb24gd3JvdGU6Cj4gPj4+IEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVuLm9y
Zz4gd3JvdGU6Cj4gPj4+PiBPbiAwNS8wNi8yMDE5IDEyOjE3LCBLYXJsIFBhbHNzb24gd3JvdGU6
Cj4gPj4+Pj4gSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cm90ZToKPiA+Pj4+Pj4g
VGhpcyBjYW4gYmUgdXNlZCBpbnNpZGUgYnVpbGQgc2V0dXBzIGZvciBlYXN5IGZlZWRzLmNvbmYK
PiA+Pj4+Pj4gZ2VuZXJhdGlvbi4KPiA+Pj4+PiBDb3VsZCB5b3UgZ2l2ZSB1cyBhbiBleGFtcGxl
IG9mIGhvdyB0aGlzIGlzIGFjdHVhbGx5IGVhc3ksIG9yCj4gPj4+Pj4gd2hhdCBzb3J0IG9mIGZ1
bmN0aW9uYWxpdHkgdGhpcyBpcyBwcm92aWRpbmcgYmV5b25kICJjYXQKPiA+Pj4+PiBmZWVkcy5j
b25mLmRlZmF1bHQgZmVlZHMuY29uZi5leHRyYSA+IGZlZWRzLmNvbmYiCj4gPj4+Pj4KPiA+Pj4+
PiBJdCBzZWVtcyBsaWtlIGEgbG90IG9mIHBlcmwgZm9yIGEgbmFycm93IHVzZWNhc2UuCj4gPj4+
Pj4KPiA+Pj4+PiBTaW5jZXJlbHksCj4gPj4+Pj4gS2FybCBQYWxzc29uCj4gPj4+PiBUaGlzIHdh
cyBicm91Z2h0IHVwIGFzIGEgbWlzc2luZyBmZWF0dXJlIGJ5IHRoZSBwcnBsIGZvbGtzLiBJCj4g
Pj4+PiBjb25zaWRlcmVkIG9uIGhvdyB0byBiZXN0IGltcGxlbWVudCB0aGlzIGFuZCBmaW5kIHRo
YXQgaGF2aW5nCj4gPj4+PiBwcm9wZXIgdG9vbGluZyBpcyBtdWNoIGJldHRlciB0aGFuIGhhdmlu
ZyB0byBjYXJyeSBhcm91bmQgYW4KPiA+Pj4+IGV4dHJhIGZpbGUgdGhhdCBpcyBjYXQuIGJlaW5n
IGFibGUgdG8gYnVpbGQgdGhlIGZlZWRzLmNvbmYKPiA+Pj4+IGR5bmFtaWNhbGx5IGxpa2UgdGhp
cyBqdXN0IHNlZW1zIG11Y2ggY2xlYW5lciB0byBtZSBhbmQgd2lsbAo+ID4+Pj4gYWxsb3cgZG93
bnN0cmVhbSB1c2VycywgdmVuZG9ycywgb2RtcyBhbmQgaW50ZWdyYXRvcnMgdG8gaGF2ZQo+ID4+
Pj4gbGVzcyBuZWVkIHRvIHBhdGNoIHRoZWlyIHRyZWVzIHRvIGRlYXRoLgo+ID4+PiBTbywgdGhl
eSBzdGlsbCBoYXZlIHRvIGhhdmUgYSBzY3JpcHQsIGJ1dCBub3cgdGhlIHNjcmlwdCBoYXMuLi4K
PiA+Pj4KPiA+Pj4KPiA+Pj4gLi4uCj4gPj4+IC4vc2NyaXB0cy9mZWVkcyBzZXR1cCAtYiBzcmMt
Z2l0LHByaXZhdGUtYWEsZ2l0Oi8vYmxhaAo+ID4+PiBzcmMtbGluayxwcml2YXRlLWJiLC93b3Av
YmxhaAo+ID4+PiAuLi4KPiA+Pj4KPiA+Pj4gaW5zdGVhZCBvZgo+ID4+PiAuLi4KPiA+Pj4gY3Ag
ZmVlZHMuY29uZi5kZWZhdWx0IGZlZWRzLmNvbmYKPiA+Pj4gZWNobyAic3JjLWdpdCBwcml2YXRl
LWFhIGdpdDovL2JsYWgiID4+IGZlZWRzLmNvbmYKPiA+Pj4gZWNobyAic3JjLWxpbmsgcHJpdmF0
ZS1iYiAvd29wL2JsYWgiID4+IGZlZWRzLmNvbmYKPiA+Pj4gLi4uCj4gPj4+Cj4gPj4+IEkgbWVh
biwgX3llc18gaXQncyAic2ltcGxlciIgYnV0IGl0J3Mgb25seSBzaW1wbGVyIGJ5IGJyaW5naW5n
IGluCj4gPj4+IG5ldyB0b29scyB3aXRoIG5ldyBsYXllcnMgb2YgYWJzdHJhY3Rpb24uIEkgcmVh
bGx5IHF1ZXN0aW9uCj4gPj4+IHdoZXRoZXIgdGhhdCdzIGFjdHVhbGx5IHNpbXBsZXIgZm9yIGFu
eW9uZSBpbiB0aGUgbG9uZyBydW4sIGFuZAo+ID4+PiBhbHNvIGhvdyB0aGlzIHJlYWxseSBjb3Vu
dHMgYXMgYSAibWlzc2luZyBmZWF0dXJlIiBUaGVyZSdzIHN0aWxsCj4gPj4+IGdvaW5nIHRvIGJl
IGEgcmVxdWlyZW1lbnQgZm9yIHRoYXQgdmVuZG9yIHNjcmlwdC4KPiA+Pj4KPiA+Pj4gU2luY2Vy
ZWx5LAo+ID4+PiBLYXJsIFBhbHNzb24KPiA+PiBJdHMgbm90IGEgbmV3IHRvb2wsIGl0cyBhbiBl
eHRyYSBjYWxsIHRvIGFuIGFscmVhZHkgZXhpc3Rpbmcgb25lLiBJCj4gPj4gYmVsaWV2ZSB0aGF0
IHRoZSBvbmUgbGluZXIgaXMgbXVjaCBjbGVhbmVyIHRoYW4gdGhlIDMgbGluZSBzY3JpcHRhZ2Uu
Cj4gPj4gdGhlcmUgaXMgbm8gcmVxdWlyZW1lbnQgZm9yIGEgdmVuZG9yIHNjcmlwdC4gdGhleSBz
aGlwIHdpdGggYSBQREYgdGhhdAo+ID4+IGhhcyB0aGUgYnVpbGQgc3RlcHMuIFRoaXMgb25lbGlu
ZSB3aWxsIGJlIG11Y2ggZWFzaWVyIHRvIHVzZSBJIGJlbGlldmUuCj4gPiBTaW5jZSB0aGUgdXNl
IGNhc2UgaXMgaGF2aW5nIGFkZGl0aW9uYWwgY3VzdG9tIGZlZWRzIHRvIHRoZSBub3JtYWwKPiA+
IHBhY2thZ2UgZmVlZHMsIG1heWJlIGl0IHdvdWxkIG1ha2UgbW9yZSBzZW5zZSB0byBoYXZlIGEg
ZS5nLgo+ID4gZmVlZHMuY29uZi5jdXN0b20gdGhhdCBpcyB1c2VkIGFzIGFuIGFkZGl0aW9uIHRv
IHRoZQo+ID4gZmVlZHMuY29uZi5kZWZhdWx0IGluc3RlYWQgb2YgY29tcGxldGVseSByZXBsYWNp
bmcgaXQuIFRoYXQgd2F5IHlvdQo+ID4gd291bGQgYXZvaWQgbWlzc2luZyB1cHN0cmVhbSBjaGFu
Z2VzIGluIHRoZSBmZWVkcy5jb25mLmRlZmF1bHQgd2hlbgo+ID4gdXBkYXRpbmcgeW91ciBidWls
ZCBlbnZpcm9ubWVudC4KPgo+IEhpLAo+Cj4gVGhlIHBhdGNoIGRvZXMgbm90IG1hbmlwdWxhdGUg
dGhlIGRlZmF1bHQgZmlsZSBhdCBhbGwuCj4KPgo+ID4KPiA+IFRoZW4gd2UgY291bGQgYWRkIGEg
ZmV3IGNvbW1hbmRzIHRvIHNjcmlwdHMvZmVlZHMgZm9yIG1hbmlwdWxhdGluZwo+ID4gdGhhdCBm
ZWVkcy5jb25mLmN1c3RvbSAoYWRkaW5nL3JlbW92aW5nIGZlZWRzLCBjaGFuZ2luZyB0aGVpcgo+
ID4gdHlwZXMvYWRkcmVzc2VzL25hbWVzIGV0YykuCj4gc28gaW5zdGVhZCBvZiB1c2luZyBzY3Jp
cHQvY29tbWFuZHMgdG8gY3JlYXRlIHRoZSBhbHJlYWR5IGV4aXN0aW5nCj4gZmVlZHMuY29uZiBm
aWxlIHdlIHNob3VsZCBpbnRyb2R1Y2UgYSAzcmQgZmlsZSA/IHRoYXQgbWFrZXMgbm8gc2Vuc2Ug
dG8gbWUuCgpObywgaW4gdGhhdCBjYXNlIHRoZXJlIHdvdWxkIGJlIG5vIGZlZWRzLmNvbmYuIEp1
c3QgZmVlZHMuY29uZi5kZWZhdWx0CisgZmVlZHMuY29uZi5jdXN0b20gKGEgImRpZmYiKSwgc28g
c3RpbGwgb25seSB0d28gZmlsZXMuIERpZmZlcmVudApuYW1lIHRvIG5vdCBicmVhayBleGlzdGlu
ZyBmZWVkcy5jb25mIHNldHVwcy4gT3IgYWRkIGEgbWFya2VyIHRvCmZlZWRzLmNvbmYgdG8gbWFy
ayBpdCBhcyBhICJzbmlwcGV0L2RpZmYiLiBPciBtYXliZSB1c2UgdGhlIGluY2x1ZGUKdGhpbmcg
cHJvcG9zZWQgYnkgQmrDuHJuIGF0IHRoZSB0b3AgbGluZSBvZiB0aGUgZ2VuZXJhdGVkIGZlZWRz
LmNvbmYuCgpTbyB0aGUgZmVlZHMuY29uZiBnZW5lcmF0ZWQgYnkgeW91ciBjb21tYW5kIHdvdWxk
IHRoZW4gYmUKCnNyYy1pbmNsdWRlIGZlZWRzLmNvbmYuZGVmYXVsdApzcmMtZ2l0IGN1c3RvbV9z
dHVmZiBnaXQ6Ly9leGFtcGxlLmNvbTpmb28KCmF2b2lkaW5nIGhhdmluZyB0byBoYXZlIGEgbG9j
YWwsIHVuY2hhbmdpbmcgY29weSBvZiBjb250ZW50cyBvZgpmZWVkcy5jb25mLmRlZmF1bHQgaW4g
dGhlcmUuCgpBIGJpdCBsaWtlIHdlIHNwbGl0IHVwIHRoZSBvcGtnIGZlZWRzIGNvbmZpZ3VyYXRp
b24gdG8gYmFzaWMvZGlzdApmZWVkcyBmaWxlcyBhbmQgY3VzdG9tIGZlZWRzIGZpbGUuCgoKUmVn
YXJkcwpKb25hcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
