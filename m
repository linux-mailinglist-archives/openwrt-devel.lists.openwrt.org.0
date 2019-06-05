Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FB435DE5
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 15:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4t/wirawdbdBLDQP/TQg8BxJxWAppUU1p8DJ20Sp6I=; b=uSa6ahmt4qG7i3
	qzh1IcA8yCsimrb3RmfJ/u2juX+KbSl+gMZJ/NptXJ0HmE44+khtFlmyN4igtdRFVZfhstsoYiryv
	lGxxGMy+61o/tEgUK7K2W36jLVjkHUGfqwSMkgWTdkW6t/ilijEujpK6SFTbvloFadIINi0WEigGA
	8gTrk5AJ2SlUyPP/n1Yud1Hlxj237BTelOhwxmdzKWeoZ53fHoJ4ZbXd7F/1rLE6lRwhOaoNplivC
	bCR3hOAGHL7D8eKo+m+nXNgr+D0LEsJ1a8nWY2V8GIxXsLohJ1m2wJhNRboIWZQnYTY9xZ4DI17Vd
	zJJATIcIlcB9NysDqPUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVvj-0006HO-3E; Wed, 05 Jun 2019 13:26:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVvb-0006H0-IJ
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 13:26:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so14213096wrw.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Jun 2019 06:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wBL7jXK4YSgdn7D++Ymt7MLKHzX+f70cXpye0uKpGAk=;
 b=NnQhQ6VNVoqbXQ5NUdJjPyrML1ePBd2Tx6vrLrNqz5rhe/X4B0UbsBa2kpfNY5z6S6
 CUCA79L+fuHhwWQ6rKNSfTPVRkzDhFj3O4OJVlF1K2ycBZmz+MNBaZBOlR3tmfQZYJ4M
 pxpEIR6RrL6htwFl/7KM2V/h5yQhH0+GRWK5xj7S3ALbRgvn1PgumKKok/Hdpycl23Uv
 8Lys5zN4qtdRQOiBAuKR+SMWRSuxri9UyAaTcBBObtTV3/m2XVVU+uN8U+HTvX1RdeFP
 iE8zaTfCgK0dkQ4iB5Xuj8LhvYvYhBwtnekSU4oyARkcCEtvLTOl71Sr3GaqJNk9U7tr
 k2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wBL7jXK4YSgdn7D++Ymt7MLKHzX+f70cXpye0uKpGAk=;
 b=Ab1CwM5Qj0ouUuaU6Md3C+x+vA8I39SW3YNw5GRRDQNTbeVTbfFgOZ44paYAs6OexG
 WOLK5gwMtUUpgIs88glHOWD6n28VZK+26vb0rVZsK/A+St44hwZdySriDHajGRkCox9t
 dpTledPzNZeUXNI6sXQEx6BY9YckJh6aySxckbfwwdRnMYc4N1KgEKHraQvxoa3VwvX4
 bOdoIiunEDcsypbFI92i4FLbub5MGZRqqKsVGwZgnwoW/yjUrnduTgTu83U9xmb/+7FH
 cJWj90TLgY5yBnitOH3Pcq/Oz3RhjZXVMpHRUQALotBNtmQ8g0LIQW5Qa6A4WSJGg4Qf
 qvyQ==
X-Gm-Message-State: APjAAAVijAKDOSsJyNGxUYndosXlZvbDAyHbickxQg4XU5KfcXvQDIH8
 5C1TLTjat+mDmMEoOg4s4a2M22Tx2m8B1drQJzM=
X-Google-Smtp-Source: APXvYqzfYCUfFh6KADWM8RNpfwETSYd4w621gDv0yNle8ykxgz//vC95Ie137QIBBKf5HoJWQXq07jWs2U1hLCYXEjY=
X-Received: by 2002:a5d:68d2:: with SMTP id p18mr4561801wrw.56.1559741166184; 
 Wed, 05 Jun 2019 06:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
 <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
 <CAOiHx=kNxYHxV2e+Cc5pY4V6FD+YuYxvK9V1U7iua_x5Uo30AA@mail.gmail.com>
 <522982e7-b056-a798-022f-a58155ad99bf@phrozen.org>
 <CAOiHx=n8nJZ7hxocaNN+DmTwqMMNJnhKOi+xyiGP=5SHWdz3_g@mail.gmail.com>
 <059bcae8-bbe3-73e7-66cd-b0e1f2f7b777@phrozen.org>
In-Reply-To: <059bcae8-bbe3-73e7-66cd-b0e1f2f7b777@phrozen.org>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 5 Jun 2019 15:26:03 +0200
Message-ID: <CAOiHx=mQuic7ZS6cVQPfjCPS8V3H40vJV5ErkBa29JrEmctN6Q@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_062607_606031_D0DE44D7 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

T24gV2VkLCA1IEp1biAyMDE5IGF0IDE1OjE2LCBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3plbi5v
cmc+IHdyb3RlOgo+Cj4KPiBPbiAwNS8wNi8yMDE5IDE1OjExLCBKb25hcyBHb3Jza2kgd3JvdGU6
Cj4gPiBPbiBXZWQsIDUgSnVuIDIwMTkgYXQgMTQ6NTgsIEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJv
emVuLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAwNS8wNi8yMDE5IDE0OjU0LCBKb25hcyBHb3Jz
a2kgd3JvdGU6Cj4gPj4+IEhpLAo+ID4+Pgo+ID4+PiBPbiBXZWQsIDUgSnVuIDIwMTkgYXQgMTQ6
MzMsIEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVuLm9yZz4gd3JvdGU6Cj4gPj4+PiBPbiAwNS8w
Ni8yMDE5IDEzOjM1LCBLYXJsIFBhbHNzb24gd3JvdGU6Cj4gPj4+Pj4gSm9obiBDcmlzcGluIDxq
b2huQHBocm96ZW4ub3JnPiB3cm90ZToKPiA+Pj4+Pj4gT24gMDUvMDYvMjAxOSAxMjoxNywgS2Fy
bCBQYWxzc29uIHdyb3RlOgo+ID4+Pj4+Pj4gSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3Jn
PiB3cm90ZToKPiA+Pj4+Pj4+PiBUaGlzIGNhbiBiZSB1c2VkIGluc2lkZSBidWlsZCBzZXR1cHMg
Zm9yIGVhc3kgZmVlZHMuY29uZgo+ID4+Pj4+Pj4+IGdlbmVyYXRpb24uCj4gPj4+Pj4+PiBDb3Vs
ZCB5b3UgZ2l2ZSB1cyBhbiBleGFtcGxlIG9mIGhvdyB0aGlzIGlzIGFjdHVhbGx5IGVhc3ksIG9y
Cj4gPj4+Pj4+PiB3aGF0IHNvcnQgb2YgZnVuY3Rpb25hbGl0eSB0aGlzIGlzIHByb3ZpZGluZyBi
ZXlvbmQgImNhdAo+ID4+Pj4+Pj4gZmVlZHMuY29uZi5kZWZhdWx0IGZlZWRzLmNvbmYuZXh0cmEg
PiBmZWVkcy5jb25mIgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEl0IHNlZW1zIGxpa2UgYSBsb3Qgb2Yg
cGVybCBmb3IgYSBuYXJyb3cgdXNlY2FzZS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBTaW5jZXJlbHks
Cj4gPj4+Pj4+PiBLYXJsIFBhbHNzb24KPiA+Pj4+Pj4gVGhpcyB3YXMgYnJvdWdodCB1cCBhcyBh
IG1pc3NpbmcgZmVhdHVyZSBieSB0aGUgcHJwbCBmb2xrcy4gSQo+ID4+Pj4+PiBjb25zaWRlcmVk
IG9uIGhvdyB0byBiZXN0IGltcGxlbWVudCB0aGlzIGFuZCBmaW5kIHRoYXQgaGF2aW5nCj4gPj4+
Pj4+IHByb3BlciB0b29saW5nIGlzIG11Y2ggYmV0dGVyIHRoYW4gaGF2aW5nIHRvIGNhcnJ5IGFy
b3VuZCBhbgo+ID4+Pj4+PiBleHRyYSBmaWxlIHRoYXQgaXMgY2F0LiBiZWluZyBhYmxlIHRvIGJ1
aWxkIHRoZSBmZWVkcy5jb25mCj4gPj4+Pj4+IGR5bmFtaWNhbGx5IGxpa2UgdGhpcyBqdXN0IHNl
ZW1zIG11Y2ggY2xlYW5lciB0byBtZSBhbmQgd2lsbAo+ID4+Pj4+PiBhbGxvdyBkb3duc3RyZWFt
IHVzZXJzLCB2ZW5kb3JzLCBvZG1zIGFuZCBpbnRlZ3JhdG9ycyB0byBoYXZlCj4gPj4+Pj4+IGxl
c3MgbmVlZCB0byBwYXRjaCB0aGVpciB0cmVlcyB0byBkZWF0aC4KPiA+Pj4+PiBTbywgdGhleSBz
dGlsbCBoYXZlIHRvIGhhdmUgYSBzY3JpcHQsIGJ1dCBub3cgdGhlIHNjcmlwdCBoYXMuLi4KPiA+
Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gLi4uCj4gPj4+Pj4gLi9zY3JpcHRzL2ZlZWRzIHNldHVwIC1i
IHNyYy1naXQscHJpdmF0ZS1hYSxnaXQ6Ly9ibGFoCj4gPj4+Pj4gc3JjLWxpbmsscHJpdmF0ZS1i
Yiwvd29wL2JsYWgKPiA+Pj4+PiAuLi4KPiA+Pj4+Pgo+ID4+Pj4+IGluc3RlYWQgb2YKPiA+Pj4+
PiAuLi4KPiA+Pj4+PiBjcCBmZWVkcy5jb25mLmRlZmF1bHQgZmVlZHMuY29uZgo+ID4+Pj4+IGVj
aG8gInNyYy1naXQgcHJpdmF0ZS1hYSBnaXQ6Ly9ibGFoIiA+PiBmZWVkcy5jb25mCj4gPj4+Pj4g
ZWNobyAic3JjLWxpbmsgcHJpdmF0ZS1iYiAvd29wL2JsYWgiID4+IGZlZWRzLmNvbmYKPiA+Pj4+
PiAuLi4KPiA+Pj4+Pgo+ID4+Pj4+IEkgbWVhbiwgX3llc18gaXQncyAic2ltcGxlciIgYnV0IGl0
J3Mgb25seSBzaW1wbGVyIGJ5IGJyaW5naW5nIGluCj4gPj4+Pj4gbmV3IHRvb2xzIHdpdGggbmV3
IGxheWVycyBvZiBhYnN0cmFjdGlvbi4gSSByZWFsbHkgcXVlc3Rpb24KPiA+Pj4+PiB3aGV0aGVy
IHRoYXQncyBhY3R1YWxseSBzaW1wbGVyIGZvciBhbnlvbmUgaW4gdGhlIGxvbmcgcnVuLCBhbmQK
PiA+Pj4+PiBhbHNvIGhvdyB0aGlzIHJlYWxseSBjb3VudHMgYXMgYSAibWlzc2luZyBmZWF0dXJl
IiBUaGVyZSdzIHN0aWxsCj4gPj4+Pj4gZ29pbmcgdG8gYmUgYSByZXF1aXJlbWVudCBmb3IgdGhh
dCB2ZW5kb3Igc2NyaXB0Lgo+ID4+Pj4+Cj4gPj4+Pj4gU2luY2VyZWx5LAo+ID4+Pj4+IEthcmwg
UGFsc3Nvbgo+ID4+Pj4gSXRzIG5vdCBhIG5ldyB0b29sLCBpdHMgYW4gZXh0cmEgY2FsbCB0byBh
biBhbHJlYWR5IGV4aXN0aW5nIG9uZS4gSQo+ID4+Pj4gYmVsaWV2ZSB0aGF0IHRoZSBvbmUgbGlu
ZXIgaXMgbXVjaCBjbGVhbmVyIHRoYW4gdGhlIDMgbGluZSBzY3JpcHRhZ2UuCj4gPj4+PiB0aGVy
ZSBpcyBubyByZXF1aXJlbWVudCBmb3IgYSB2ZW5kb3Igc2NyaXB0LiB0aGV5IHNoaXAgd2l0aCBh
IFBERiB0aGF0Cj4gPj4+PiBoYXMgdGhlIGJ1aWxkIHN0ZXBzLiBUaGlzIG9uZWxpbmUgd2lsbCBi
ZSBtdWNoIGVhc2llciB0byB1c2UgSSBiZWxpZXZlLgo+ID4+PiBTaW5jZSB0aGUgdXNlIGNhc2Ug
aXMgaGF2aW5nIGFkZGl0aW9uYWwgY3VzdG9tIGZlZWRzIHRvIHRoZSBub3JtYWwKPiA+Pj4gcGFj
a2FnZSBmZWVkcywgbWF5YmUgaXQgd291bGQgbWFrZSBtb3JlIHNlbnNlIHRvIGhhdmUgYSBlLmcu
Cj4gPj4+IGZlZWRzLmNvbmYuY3VzdG9tIHRoYXQgaXMgdXNlZCBhcyBhbiBhZGRpdGlvbiB0byB0
aGUKPiA+Pj4gZmVlZHMuY29uZi5kZWZhdWx0IGluc3RlYWQgb2YgY29tcGxldGVseSByZXBsYWNp
bmcgaXQuIFRoYXQgd2F5IHlvdQo+ID4+PiB3b3VsZCBhdm9pZCBtaXNzaW5nIHVwc3RyZWFtIGNo
YW5nZXMgaW4gdGhlIGZlZWRzLmNvbmYuZGVmYXVsdCB3aGVuCj4gPj4+IHVwZGF0aW5nIHlvdXIg
YnVpbGQgZW52aXJvbm1lbnQuCj4gPj4gSGksCj4gPj4KPiA+PiBUaGUgcGF0Y2ggZG9lcyBub3Qg
bWFuaXB1bGF0ZSB0aGUgZGVmYXVsdCBmaWxlIGF0IGFsbC4KPiA+Pgo+ID4+Cj4gPj4+IFRoZW4g
d2UgY291bGQgYWRkIGEgZmV3IGNvbW1hbmRzIHRvIHNjcmlwdHMvZmVlZHMgZm9yIG1hbmlwdWxh
dGluZwo+ID4+PiB0aGF0IGZlZWRzLmNvbmYuY3VzdG9tIChhZGRpbmcvcmVtb3ZpbmcgZmVlZHMs
IGNoYW5naW5nIHRoZWlyCj4gPj4+IHR5cGVzL2FkZHJlc3Nlcy9uYW1lcyBldGMpLgo+ID4+IHNv
IGluc3RlYWQgb2YgdXNpbmcgc2NyaXB0L2NvbW1hbmRzIHRvIGNyZWF0ZSB0aGUgYWxyZWFkeSBl
eGlzdGluZwo+ID4+IGZlZWRzLmNvbmYgZmlsZSB3ZSBzaG91bGQgaW50cm9kdWNlIGEgM3JkIGZp
bGUgPyB0aGF0IG1ha2VzIG5vIHNlbnNlIHRvIG1lLgo+ID4gTm8sIGluIHRoYXQgY2FzZSB0aGVy
ZSB3b3VsZCBiZSBubyBmZWVkcy5jb25mLiBKdXN0IGZlZWRzLmNvbmYuZGVmYXVsdAo+ID4gKyBm
ZWVkcy5jb25mLmN1c3RvbSAoYSAiZGlmZiIpLCBzbyBzdGlsbCBvbmx5IHR3byBmaWxlcy4gRGlm
ZmVyZW50Cj4gPiBuYW1lIHRvIG5vdCBicmVhayBleGlzdGluZyBmZWVkcy5jb25mIHNldHVwcy4g
T3IgYWRkIGEgbWFya2VyIHRvCj4gPiBmZWVkcy5jb25mIHRvIG1hcmsgaXQgYXMgYSAic25pcHBl
dC9kaWZmIi4gT3IgbWF5YmUgdXNlIHRoZSBpbmNsdWRlCj4gPiB0aGluZyBwcm9wb3NlZCBieSBC
asO4cm4gYXQgdGhlIHRvcCBsaW5lIG9mIHRoZSBnZW5lcmF0ZWQgZmVlZHMuY29uZi4KPiA+Cj4g
PiBTbyB0aGUgZmVlZHMuY29uZiBnZW5lcmF0ZWQgYnkgeW91ciBjb21tYW5kIHdvdWxkIHRoZW4g
YmUKPiA+Cj4gPiBzcmMtaW5jbHVkZSBmZWVkcy5jb25mLmRlZmF1bHQKPiA+IHNyYy1naXQgY3Vz
dG9tX3N0dWZmIGdpdDovL2V4YW1wbGUuY29tOmZvbwo+ID4KPiA+IGF2b2lkaW5nIGhhdmluZyB0
byBoYXZlIGEgbG9jYWwsIHVuY2hhbmdpbmcgY29weSBvZiBjb250ZW50cyBvZgo+ID4gZmVlZHMu
Y29uZi5kZWZhdWx0IGluIHRoZXJlLgo+ID4KPiA+IEEgYml0IGxpa2Ugd2Ugc3BsaXQgdXAgdGhl
IG9wa2cgZmVlZHMgY29uZmlndXJhdGlvbiB0byBiYXNpYy9kaXN0Cj4gPiBmZWVkcyBmaWxlcyBh
bmQgY3VzdG9tIGZlZWRzIGZpbGUuCj4gPgo+ID4KPiA+IFJlZ2FyZHMKPiA+IEpvbmFzCj4KPgo+
IFRoYXQgd2lsbCB5ZXQgYWdhaW4gcmVxdWlyZSBhbiBhZGRpdGlvbmFsIGdpdCB0cmVlLCB3aGlj
aCBpcyBub3QKPiBkZXBsb3lhYmxlIGluc2lkZSBhIHRhciBmaWxlICsgcGRmIGFuZCBpcyB2b29k
b28gdG8gdGhlIHVzZXJzLiBJIGRvIGxpa2UKPiB0aGUgaWRlYSB0aG91Z2gsIGJ1dCBpdCBpcyBm
aXR0aW5nIGZvciBhIGZvc3MgZGV2ZWxvcGVyIGFuZCBub3QgYQo+IGNvcnBvcmF0ZSBjb2Rlci4K
Cj8/PyBXaGVyZSBkb2VzIHRoZSBhZGRpdGlvbmFsIGdpdCB0cmVlIGNvbWUgZnJvbT8KCklmIHRo
ZSBmZWVkcy5jb25mLmRlZmF1bHQgZG9lc24ndCBjaGFuZ2UsIHRoYXQncyBmaW5lLiBCdXQgbm90
IGhhdmluZwp0aGUgZGVmYXVsdCBmZWVkcyBpbiBhIChsb2NhbCkgY29uZmlndXJhdGlvbiBmaWxl
IGhhcyB0aGUgYWR2YW50YWdlCnRoYXQgaWYgeW91IGUuZy4gdXBkYXRlIHlvdXIgYmFzZSBkaXN0
cmlidXRpb24vc2RrIGZyb20gZS5nLiAxOS4wNiB0bwoxOS4xMiwgeW91IGRvbid0IG5lZWQgdG8g
dXBkYXRlIHlvdXIgZmVlZHMuY29uZiB0byBwb2ludCB0byB0aGUgMTkuMTIKYnJhbmNoZXMuIE9y
IHJlLWNyZWF0ZSBpdC4KCkpvbmFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
