Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFFE35E2A
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 15:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWnalALix8wNiS95m+HLp44waYfWOrtHixMhF8mYaKc=; b=bmKU15QOJI0ZFX
	mSWzXXYn/Y1dFk9Q3I8hw/7Vmjm4vuQ6SdLMdk+7tsPPMB+X4/8DQFekwRpZeW/nAyCPV++c5K7hZ
	3mzXJvZDGmJasd1qplJIrrwsgwpi9YhtRWvf5F2Mt/aAdJVBcGKFJA/vwnsA4TuRjl2Yyg+wDlQG+
	//bezR3H40RTelNwgiPjwEvoi7vVA5lIcc4RjXH3MpWkrWuOm1H0H8GiFM3aIEAtx/gdyXMFPKF/9
	tJrOSSwIiLInKic/NkB2SuguvkzV5O4K6tGUjQ7L/azeWlZlA2MXJFqllzRRS9kx55VfIugbAjWh3
	7Qa0tNAYJpQa0E9eKdfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWBy-0004Fx-Tb; Wed, 05 Jun 2019 13:43:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWBr-0004EW-TJ
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 13:42:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so1810614wmh.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Jun 2019 06:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4mLnFwvYv9Zvh8C5O7QvEFRc7+FrU6fKu2495TS6Uxs=;
 b=WfFxrDskS8xyZaQxmfdDD7jv0yghhOiGQXgw0/wrhzYgIbZHPButYq9SiYEAoOq0TR
 G5jjwndUPrT0XkRbRoZe+rEesZWkcA62qkfM/fnCL9wj/p+KK+EUX8l1PJKCN6DLb3oa
 o9FLZjxxTOmrCv8zARJQfxDNCh+z+dIb/o8B6X1OhDgyX4kb0P80ycDmPWi836M2TL3z
 jRoYYBE0opfs6w55ZR+TupIlSKcElrAaSkvlAfpkz+9GOlZqNNh5E5a9jx0aRRze/FMe
 73suavy3ADONhx4GbF6oKe/x+acuHCtOfaagodbg2G+IeEiEiv51T76XeSHsfbMfIxQg
 0JBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4mLnFwvYv9Zvh8C5O7QvEFRc7+FrU6fKu2495TS6Uxs=;
 b=Ul+ttnhImgPTjx+yrmfQgYLiOg0XeIMBk9zgKgYLdlp4uSnzDoM8S+ntEZnyfXIQwn
 ayi3UNPKITUAFsJqOUvvUceRLkXK27+8xrCoYXkHN2Ic+2ZO9uFIjTmFS4/FkUXbNvYu
 uMb+nrBr6dI3osyP0PzNjEEqOJ9DH0LnlTxyFQYOyJ9Upja4NbsNQ3w8X2P1S3XeIyiI
 WlpwYbCODMyFbIvRhASBWfkjILsyrS4yQLBh8u2UTjlRUh/tnUo7exLahsSPW56K3Zpu
 dgpKsU0PHVnIDKxXU5s9gEVXh1Twg7MZRN/61f6CcyF0tOml0jKJmdokGDQy8xiyS1Fp
 ZCQw==
X-Gm-Message-State: APjAAAWT9iPZGPK71HIPxQ8+EJqGhkaCwMZwvtMKzcg1AEsTtM46OwkG
 SIxNExKxk5O9OUoy8WvPmVj7grYHknKzZ1kJK5f64g==
X-Google-Smtp-Source: APXvYqzCf4OW+qQuqVaz+89si51scdEuCFYjWWbQCHSdwQDg9Vhj3GTDKOO4C7HYRKu7He6wqIMBsRhng/RCBnbleqg=
X-Received: by 2002:a7b:c40c:: with SMTP id k12mr5514612wmi.122.1559742174464; 
 Wed, 05 Jun 2019 06:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
 <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
 <CAOiHx=kNxYHxV2e+Cc5pY4V6FD+YuYxvK9V1U7iua_x5Uo30AA@mail.gmail.com>
 <522982e7-b056-a798-022f-a58155ad99bf@phrozen.org>
 <CAOiHx=n8nJZ7hxocaNN+DmTwqMMNJnhKOi+xyiGP=5SHWdz3_g@mail.gmail.com>
 <059bcae8-bbe3-73e7-66cd-b0e1f2f7b777@phrozen.org>
 <CAOiHx=mQuic7ZS6cVQPfjCPS8V3H40vJV5ErkBa29JrEmctN6Q@mail.gmail.com>
 <a89d55da-b4ef-ed98-a5af-34cbd43df861@phrozen.org>
In-Reply-To: <a89d55da-b4ef-ed98-a5af-34cbd43df861@phrozen.org>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 5 Jun 2019 15:42:51 +0200
Message-ID: <CAOiHx=mu9RnuoLNvQ7Etyh8N2GHucayXi5yh9NZczKdC+F+Bew@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_064255_942852_14CA2F79 
X-CRM114-Status: GOOD (  27.88  )
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCA1IEp1biAyMDE5IGF0IDE1OjI4LCBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3plbi5v
cmc+IHdyb3RlOgo+Cj4KPiBPbiAwNS8wNi8yMDE5IDE1OjI2LCBKb25hcyBHb3Jza2kgd3JvdGU6
Cj4gPiBPbiBXZWQsIDUgSnVuIDIwMTkgYXQgMTU6MTYsIEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJv
emVuLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAwNS8wNi8yMDE5IDE1OjExLCBKb25hcyBHb3Jz
a2kgd3JvdGU6Cj4gPj4+IE9uIFdlZCwgNSBKdW4gMjAxOSBhdCAxNDo1OCwgSm9obiBDcmlzcGlu
IDxqb2huQHBocm96ZW4ub3JnPiB3cm90ZToKPiA+Pj4+IE9uIDA1LzA2LzIwMTkgMTQ6NTQsIEpv
bmFzIEdvcnNraSB3cm90ZToKPiA+Pj4+PiBIaSwKPiA+Pj4+Pgo+ID4+Pj4+IE9uIFdlZCwgNSBK
dW4gMjAxOSBhdCAxNDozMywgSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cm90ZToK
PiA+Pj4+Pj4gT24gMDUvMDYvMjAxOSAxMzozNSwgS2FybCBQYWxzc29uIHdyb3RlOgo+ID4+Pj4+
Pj4gSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cm90ZToKPiA+Pj4+Pj4+PiBPbiAw
NS8wNi8yMDE5IDEyOjE3LCBLYXJsIFBhbHNzb24gd3JvdGU6Cj4gPj4+Pj4+Pj4+IEpvaG4gQ3Jp
c3BpbiA8am9obkBwaHJvemVuLm9yZz4gd3JvdGU6Cj4gPj4+Pj4+Pj4+PiBUaGlzIGNhbiBiZSB1
c2VkIGluc2lkZSBidWlsZCBzZXR1cHMgZm9yIGVhc3kgZmVlZHMuY29uZgo+ID4+Pj4+Pj4+Pj4g
Z2VuZXJhdGlvbi4KPiA+Pj4+Pj4+Pj4gQ291bGQgeW91IGdpdmUgdXMgYW4gZXhhbXBsZSBvZiBo
b3cgdGhpcyBpcyBhY3R1YWxseSBlYXN5LCBvcgo+ID4+Pj4+Pj4+PiB3aGF0IHNvcnQgb2YgZnVu
Y3Rpb25hbGl0eSB0aGlzIGlzIHByb3ZpZGluZyBiZXlvbmQgImNhdAo+ID4+Pj4+Pj4+PiBmZWVk
cy5jb25mLmRlZmF1bHQgZmVlZHMuY29uZi5leHRyYSA+IGZlZWRzLmNvbmYiCj4gPj4+Pj4+Pj4+
Cj4gPj4+Pj4+Pj4+IEl0IHNlZW1zIGxpa2UgYSBsb3Qgb2YgcGVybCBmb3IgYSBuYXJyb3cgdXNl
Y2FzZS4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gU2luY2VyZWx5LAo+ID4+Pj4+Pj4+PiBLYXJs
IFBhbHNzb24KPiA+Pj4+Pj4+PiBUaGlzIHdhcyBicm91Z2h0IHVwIGFzIGEgbWlzc2luZyBmZWF0
dXJlIGJ5IHRoZSBwcnBsIGZvbGtzLiBJCj4gPj4+Pj4+Pj4gY29uc2lkZXJlZCBvbiBob3cgdG8g
YmVzdCBpbXBsZW1lbnQgdGhpcyBhbmQgZmluZCB0aGF0IGhhdmluZwo+ID4+Pj4+Pj4+IHByb3Bl
ciB0b29saW5nIGlzIG11Y2ggYmV0dGVyIHRoYW4gaGF2aW5nIHRvIGNhcnJ5IGFyb3VuZCBhbgo+
ID4+Pj4+Pj4+IGV4dHJhIGZpbGUgdGhhdCBpcyBjYXQuIGJlaW5nIGFibGUgdG8gYnVpbGQgdGhl
IGZlZWRzLmNvbmYKPiA+Pj4+Pj4+PiBkeW5hbWljYWxseSBsaWtlIHRoaXMganVzdCBzZWVtcyBt
dWNoIGNsZWFuZXIgdG8gbWUgYW5kIHdpbGwKPiA+Pj4+Pj4+PiBhbGxvdyBkb3duc3RyZWFtIHVz
ZXJzLCB2ZW5kb3JzLCBvZG1zIGFuZCBpbnRlZ3JhdG9ycyB0byBoYXZlCj4gPj4+Pj4+Pj4gbGVz
cyBuZWVkIHRvIHBhdGNoIHRoZWlyIHRyZWVzIHRvIGRlYXRoLgo+ID4+Pj4+Pj4gU28sIHRoZXkg
c3RpbGwgaGF2ZSB0byBoYXZlIGEgc2NyaXB0LCBidXQgbm93IHRoZSBzY3JpcHQgaGFzLi4uCj4g
Pj4+Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IC4uLgo+ID4+Pj4+Pj4gLi9zY3JpcHRzL2ZlZWRz
IHNldHVwIC1iIHNyYy1naXQscHJpdmF0ZS1hYSxnaXQ6Ly9ibGFoCj4gPj4+Pj4+PiBzcmMtbGlu
ayxwcml2YXRlLWJiLC93b3AvYmxhaAo+ID4+Pj4+Pj4gLi4uCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4g
aW5zdGVhZCBvZgo+ID4+Pj4+Pj4gLi4uCj4gPj4+Pj4+PiBjcCBmZWVkcy5jb25mLmRlZmF1bHQg
ZmVlZHMuY29uZgo+ID4+Pj4+Pj4gZWNobyAic3JjLWdpdCBwcml2YXRlLWFhIGdpdDovL2JsYWgi
ID4+IGZlZWRzLmNvbmYKPiA+Pj4+Pj4+IGVjaG8gInNyYy1saW5rIHByaXZhdGUtYmIgL3dvcC9i
bGFoIiA+PiBmZWVkcy5jb25mCj4gPj4+Pj4+PiAuLi4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBJIG1l
YW4sIF95ZXNfIGl0J3MgInNpbXBsZXIiIGJ1dCBpdCdzIG9ubHkgc2ltcGxlciBieSBicmluZ2lu
ZyBpbgo+ID4+Pj4+Pj4gbmV3IHRvb2xzIHdpdGggbmV3IGxheWVycyBvZiBhYnN0cmFjdGlvbi4g
SSByZWFsbHkgcXVlc3Rpb24KPiA+Pj4+Pj4+IHdoZXRoZXIgdGhhdCdzIGFjdHVhbGx5IHNpbXBs
ZXIgZm9yIGFueW9uZSBpbiB0aGUgbG9uZyBydW4sIGFuZAo+ID4+Pj4+Pj4gYWxzbyBob3cgdGhp
cyByZWFsbHkgY291bnRzIGFzIGEgIm1pc3NpbmcgZmVhdHVyZSIgVGhlcmUncyBzdGlsbAo+ID4+
Pj4+Pj4gZ29pbmcgdG8gYmUgYSByZXF1aXJlbWVudCBmb3IgdGhhdCB2ZW5kb3Igc2NyaXB0Lgo+
ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFNpbmNlcmVseSwKPiA+Pj4+Pj4+IEthcmwgUGFsc3Nvbgo+ID4+
Pj4+PiBJdHMgbm90IGEgbmV3IHRvb2wsIGl0cyBhbiBleHRyYSBjYWxsIHRvIGFuIGFscmVhZHkg
ZXhpc3Rpbmcgb25lLiBJCj4gPj4+Pj4+IGJlbGlldmUgdGhhdCB0aGUgb25lIGxpbmVyIGlzIG11
Y2ggY2xlYW5lciB0aGFuIHRoZSAzIGxpbmUgc2NyaXB0YWdlLgo+ID4+Pj4+PiB0aGVyZSBpcyBu
byByZXF1aXJlbWVudCBmb3IgYSB2ZW5kb3Igc2NyaXB0LiB0aGV5IHNoaXAgd2l0aCBhIFBERiB0
aGF0Cj4gPj4+Pj4+IGhhcyB0aGUgYnVpbGQgc3RlcHMuIFRoaXMgb25lbGluZSB3aWxsIGJlIG11
Y2ggZWFzaWVyIHRvIHVzZSBJIGJlbGlldmUuCj4gPj4+Pj4gU2luY2UgdGhlIHVzZSBjYXNlIGlz
IGhhdmluZyBhZGRpdGlvbmFsIGN1c3RvbSBmZWVkcyB0byB0aGUgbm9ybWFsCj4gPj4+Pj4gcGFj
a2FnZSBmZWVkcywgbWF5YmUgaXQgd291bGQgbWFrZSBtb3JlIHNlbnNlIHRvIGhhdmUgYSBlLmcu
Cj4gPj4+Pj4gZmVlZHMuY29uZi5jdXN0b20gdGhhdCBpcyB1c2VkIGFzIGFuIGFkZGl0aW9uIHRv
IHRoZQo+ID4+Pj4+IGZlZWRzLmNvbmYuZGVmYXVsdCBpbnN0ZWFkIG9mIGNvbXBsZXRlbHkgcmVw
bGFjaW5nIGl0LiBUaGF0IHdheSB5b3UKPiA+Pj4+PiB3b3VsZCBhdm9pZCBtaXNzaW5nIHVwc3Ry
ZWFtIGNoYW5nZXMgaW4gdGhlIGZlZWRzLmNvbmYuZGVmYXVsdCB3aGVuCj4gPj4+Pj4gdXBkYXRp
bmcgeW91ciBidWlsZCBlbnZpcm9ubWVudC4KPiA+Pj4+IEhpLAo+ID4+Pj4KPiA+Pj4+IFRoZSBw
YXRjaCBkb2VzIG5vdCBtYW5pcHVsYXRlIHRoZSBkZWZhdWx0IGZpbGUgYXQgYWxsLgo+ID4+Pj4K
PiA+Pj4+Cj4gPj4+Pj4gVGhlbiB3ZSBjb3VsZCBhZGQgYSBmZXcgY29tbWFuZHMgdG8gc2NyaXB0
cy9mZWVkcyBmb3IgbWFuaXB1bGF0aW5nCj4gPj4+Pj4gdGhhdCBmZWVkcy5jb25mLmN1c3RvbSAo
YWRkaW5nL3JlbW92aW5nIGZlZWRzLCBjaGFuZ2luZyB0aGVpcgo+ID4+Pj4+IHR5cGVzL2FkZHJl
c3Nlcy9uYW1lcyBldGMpLgo+ID4+Pj4gc28gaW5zdGVhZCBvZiB1c2luZyBzY3JpcHQvY29tbWFu
ZHMgdG8gY3JlYXRlIHRoZSBhbHJlYWR5IGV4aXN0aW5nCj4gPj4+PiBmZWVkcy5jb25mIGZpbGUg
d2Ugc2hvdWxkIGludHJvZHVjZSBhIDNyZCBmaWxlID8gdGhhdCBtYWtlcyBubyBzZW5zZSB0byBt
ZS4KPiA+Pj4gTm8sIGluIHRoYXQgY2FzZSB0aGVyZSB3b3VsZCBiZSBubyBmZWVkcy5jb25mLiBK
dXN0IGZlZWRzLmNvbmYuZGVmYXVsdAo+ID4+PiArIGZlZWRzLmNvbmYuY3VzdG9tIChhICJkaWZm
IiksIHNvIHN0aWxsIG9ubHkgdHdvIGZpbGVzLiBEaWZmZXJlbnQKPiA+Pj4gbmFtZSB0byBub3Qg
YnJlYWsgZXhpc3RpbmcgZmVlZHMuY29uZiBzZXR1cHMuIE9yIGFkZCBhIG1hcmtlciB0bwo+ID4+
PiBmZWVkcy5jb25mIHRvIG1hcmsgaXQgYXMgYSAic25pcHBldC9kaWZmIi4gT3IgbWF5YmUgdXNl
IHRoZSBpbmNsdWRlCj4gPj4+IHRoaW5nIHByb3Bvc2VkIGJ5IEJqw7hybiBhdCB0aGUgdG9wIGxp
bmUgb2YgdGhlIGdlbmVyYXRlZCBmZWVkcy5jb25mLgo+ID4+Pgo+ID4+PiBTbyB0aGUgZmVlZHMu
Y29uZiBnZW5lcmF0ZWQgYnkgeW91ciBjb21tYW5kIHdvdWxkIHRoZW4gYmUKPiA+Pj4KPiA+Pj4g
c3JjLWluY2x1ZGUgZmVlZHMuY29uZi5kZWZhdWx0Cj4gPj4+IHNyYy1naXQgY3VzdG9tX3N0dWZm
IGdpdDovL2V4YW1wbGUuY29tOmZvbwo+ID4+Pgo+ID4+PiBhdm9pZGluZyBoYXZpbmcgdG8gaGF2
ZSBhIGxvY2FsLCB1bmNoYW5naW5nIGNvcHkgb2YgY29udGVudHMgb2YKPiA+Pj4gZmVlZHMuY29u
Zi5kZWZhdWx0IGluIHRoZXJlLgo+ID4+Pgo+ID4+PiBBIGJpdCBsaWtlIHdlIHNwbGl0IHVwIHRo
ZSBvcGtnIGZlZWRzIGNvbmZpZ3VyYXRpb24gdG8gYmFzaWMvZGlzdAo+ID4+PiBmZWVkcyBmaWxl
cyBhbmQgY3VzdG9tIGZlZWRzIGZpbGUuCj4gPj4+Cj4gPj4+Cj4gPj4+IFJlZ2FyZHMKPiA+Pj4g
Sm9uYXMKPiA+Pgo+ID4+IFRoYXQgd2lsbCB5ZXQgYWdhaW4gcmVxdWlyZSBhbiBhZGRpdGlvbmFs
IGdpdCB0cmVlLCB3aGljaCBpcyBub3QKPiA+PiBkZXBsb3lhYmxlIGluc2lkZSBhIHRhciBmaWxl
ICsgcGRmIGFuZCBpcyB2b29kb28gdG8gdGhlIHVzZXJzLiBJIGRvIGxpa2UKPiA+PiB0aGUgaWRl
YSB0aG91Z2gsIGJ1dCBpdCBpcyBmaXR0aW5nIGZvciBhIGZvc3MgZGV2ZWxvcGVyIGFuZCBub3Qg
YQo+ID4+IGNvcnBvcmF0ZSBjb2Rlci4KPiA+ID8/PyBXaGVyZSBkb2VzIHRoZSBhZGRpdGlvbmFs
IGdpdCB0cmVlIGNvbWUgZnJvbT8KPiA+Cj4gPiBJZiB0aGUgZmVlZHMuY29uZi5kZWZhdWx0IGRv
ZXNuJ3QgY2hhbmdlLCB0aGF0J3MgZmluZS4gQnV0IG5vdCBoYXZpbmcKPiA+IHRoZSBkZWZhdWx0
IGZlZWRzIGluIGEgKGxvY2FsKSBjb25maWd1cmF0aW9uIGZpbGUgaGFzIHRoZSBhZHZhbnRhZ2UK
PiA+IHRoYXQgaWYgeW91IGUuZy4gdXBkYXRlIHlvdXIgYmFzZSBkaXN0cmlidXRpb24vc2RrIGZy
b20gZS5nLiAxOS4wNiB0bwo+ID4gMTkuMTIsIHlvdSBkb24ndCBuZWVkIHRvIHVwZGF0ZSB5b3Vy
IGZlZWRzLmNvbmYgdG8gcG9pbnQgdG8gdGhlIDE5LjEyCj4gPiBicmFuY2hlcy4gT3IgcmUtY3Jl
YXRlIGl0Lgo+ID4KPiA+IEpvbmFzCj4KPgo+IGFoIG9rLCBzbyBpJ2xsIG1vZGlmeSB0aGUgcGF0
Y2ggdG8gbm90IGNvcHkgdGhlIGZlZWRzLmNvbmYuZGVmYXVsdCB0bwo+IGZlZWRzLmNvbmYgYnV0
IGxldCBpdCByZWZlcmVuY2UgdGhlIGZpbGUgdXNpbmcgYmpvcm4ncyBwYXRjaAoKRXhhY3RseSB3
aGF0IEkgd2FzIHByb3Bvc2luZyA6KQoKRXZlbnR1YWxseSB3ZSBtaWdodCB3YW50IHRvIG5vdCBy
ZXF1aXJlIHRvIHBhc3MgYWxsIGN1c3RvbSBmZWVkcyBhdApvbmNlIHRvIHRoZSBzY3JpcHQsIGJ1
dCBoYXZlIGEgYWRkX2ZlZWQgY29tbWFuZCAoc28geW91IGNhbiBlYXNpbHkgYWRkCm9uZSBhdCBh
IGxhdGVyIHRpbWUpLCBidXQgdGhhdCBpcyBub3RoaW5nIHRoYXQgYWZmZWN0cyB5b3VyIHByb3Bv
c2VkCmNoYW5nZXMsIGp1c3QgYWRkcyBvbiB0b3Agb2YgaXQuCgoKSm9uYXMKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
