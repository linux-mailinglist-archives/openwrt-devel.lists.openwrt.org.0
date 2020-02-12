Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7F715A26E
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 08:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jElAPJK1257NBWfpDdQ2mZxOIpitwfTjHuuZNhmRX1g=; b=DYhQ/6n/SfJW2x
	YEgIa0cOv6EpBTuYA+g1Vg3yPWnzwwz7W89y2+lDNtGiW40DAmx++6i93nrho12IDgsQRgW0EgldO
	ErAujpbwFOg8Vc6fhVSVeQhUc9TJ3pNMiyPnHEQUKjQcRLR8J2G2Q0cWT+h/sT68SRSi0gzjhSd0u
	hU2oWaIzY0oL0TJ8HRG/0SIaYIiqg3MOygBzzExblXYK6FWQL1YGuj/XhNjatJFwJPCHHKgfB/ZEC
	gGX8p52qJw0HFFVwvE7yF8Xpsh9cUL2+O/dBCoklWDkafBcCovTsUzsuQWxMSFzrN+9EkjnVS9MnE
	pFxPWlBwNl6ROxC2TskA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mor-00043m-6K; Wed, 12 Feb 2020 07:52:25 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1moj-00043M-Sv
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 07:52:19 +0000
Received: by mail-yb1-xb43.google.com with SMTP id v12so688622ybi.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Feb 2020 23:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=s2ShYct80qr3uKGwdXMU2TQF9C34T/Og9SJsKJkr3bw=;
 b=N0hbiuOLVJvh6GQoo27zt+VlIpwU89usmy/7xAZunQBTvWGCNaveQdj1K9Bl5KLGQ8
 b1Lu37XADO0b1o3pYjcAlRQZlfFoEoaBE8WHCFlF5Oe7abWSf8E3x7eofZC/T3eS7pes
 CvqFbeAlblxly/eLqrAqFyea1YVIkeB1k2YP+nwMrmA5bMRHb0DsIeS0X4nlLVZV9AFN
 1kXN/0yHV7c2q+S3kklVFU9Ayo52t+aRqDxzfbCAX3Mfqt/7plJJ7SeV2IuhV4w3FYVg
 C7Yaad9ag5s0bSy66lMZkRYoTfVL6L+GnFqa2DRjv2RTAjSm9a5pIUCKjKlTnqj4xIma
 GWmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=s2ShYct80qr3uKGwdXMU2TQF9C34T/Og9SJsKJkr3bw=;
 b=GiQy5MrVY+Cg7tx1Bqo5IcdSJ8xv44VVue6da2EQS4ztA7e8GJGtjzLHymEy6JXtj7
 Ti09cQAMeaumNRCQT6R8JrUct9QLet+2jzf95gE1vEdi436JLOwp7QX4RqYPQ5KO6g+T
 aSeuT+RfOFXCh+gUFKRIubO8WZC+PgouMX/UcjMLkBXozmAWHLGvKWzysgwYf2IEjEK9
 86FVUwk1veXhTBL3AaRaijICi/Nvy5pp8mIqRVgSyDL7yfbCGAmP0iev1FeZOtlLZi2z
 bZ9DYuY2DDryNfGi4Ruls3fVpD6nf2fFSM5iXKWgT2M4kKCoegFAmZvlOnwRMpu1ODEZ
 htiQ==
X-Gm-Message-State: APjAAAV9/ElB4XnGjbvxmynXR1CR+W3kwbBOQyMIyBkB6JhZ7LBXPkDg
 13kjwYLLo/mTiZ0GJ1vljGpORhrygu1WPo7DudbQhn4J
X-Google-Smtp-Source: APXvYqx/z3N5NVhBVUHNrLI1zAOzEaFzsK9X/LnlV4Qw/YZBG0I4n6DmfZtirjsvEmh8NkhA4vbn53D6hyOekaLYHpU=
X-Received: by 2002:a5b:14d:: with SMTP id c13mr9072339ybp.240.1581493935757; 
 Tue, 11 Feb 2020 23:52:15 -0800 (PST)
MIME-Version: 1.0
References: <CACna6rzSoJmDadcXO5zwrjo2Xzrw-quL1edE9bqO_Whq6nSPmQ@mail.gmail.com>
 <CACna6ryoz=-om7KbHiS+1YfP5jzQE_iByP269q4eH7Z3Xv4x5w@mail.gmail.com>
 <23346684-1faa-a03d-6347-a78ef610ddff@nbd.name>
In-Reply-To: <23346684-1faa-a03d-6347-a78ef610ddff@nbd.name>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 12 Feb 2020 08:52:04 +0100
Message-ID: <CACna6rwb2aeORRoxxiH7mZtpnO+B-1=p2G4wdeF2tODxa_G_+A@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_235217_959679_98A46711 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Wireless monitor interface causes device to run
 out of memory
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCAxMSBGZWIgMjAyMCBhdCAxNzoyMSwgRmVsaXggRmlldGthdSA8bmJkQG5iZC5uYW1l
PiB3cm90ZToKPiBPbiAyMDIwLTAyLTExIDE3OjAzLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4g
PiBPbiBXZWQsIDUgRmViIDIwMjAgYXQgMTE6MTQsIFJhZmHFgiBNacWCZWNraSA8emFqZWM1QGdt
YWlsLmNvbT4gd3JvdGU6Cj4gPj4gSSBub3RpY2VkIHRoYXQgbXkgYmNtNTN4eCBkZXZpY2VzIHJ1
biBvdXQgb2YgbWVtb3J5IGFmdGVyIHJ1bm5pbmcKPiA+PiB3aXJlbGVzcyBtb25pdG9yIGludGVy
ZmFjZSBmb3IgYWJvdXQgMiBkYXlzLgo+ID4+Cj4gPj4gVGhpcyBwcm9ibGVtIG9jY3VycyBzaW5j
ZSAwNjk0ZDA4Yzg0ZmQgKCJiY201M3h4OiBzd2l0Y2ggdG8ga2VybmVsCj4gPj4gNC45Iikgd2hp
Y2ggYnVtcGVkIGtlcm5lbCBmcm9tIDQuNC41MyB0byA0LjkuMTQgYW5kIGlzIHN0aWxsIHByZXNl
bnQKPiA+PiB3aGVuIHVzaW5nIDQuMTQuCj4gPj4KPiA+PiBJbnRlcmVzdGluZ2x5IHRoaXMgbWVt
b3J5IGRyYWluIHJlcXVpcmVzIGF0IGxlYXN0IG9uZSBvZjoKPiA+PiBuZXQuaXB2Ni5jb25mLmRl
ZmF1bHQuZm9yd2FyZGluZz0xCj4gPj4gbmV0LmlwdjYuY29uZi5hbGwuZm9yd2FyZGluZz0xCj4g
Pj4gdG8gYmUgc2V0LiBPcGVuV3J0IGhhcHBlbnMgdG8gdXNlIGJvdGggYnkgZGVmYXVsdC4KPiA+
Pgo+ID4+IFRoaXMgaXMgKm5vdCogYSBtZW1vcnkgbGVhay4gUmVzdGFydGluZyB3aXJlbGVzcyBp
bnRlcmZhY2VzIGZyZWVzIGFsbAo+ID4+IGNvbnN1bWVkIG1lbW9yeS4KPiA+Pgo+ID4+IEFueSBp
ZGVhIHdoYXQgbWF5IGJlIGNhdXNpbmcgdGhpcz8KPiA+Cj4gPiBUaGlzIHJlZ3Jlc3Npb24gaXMg
Y2F1c2VkIGJ5IDE2NjZkNDllMWQ0MSAoIm1sZDogZG8gbm90IHJlbW92ZSBtbGQKPiA+IHNvdWNl
IGxpc3QgaW5mbyB3aGVuIHNldCBsaW5rIGRvd24iKSB3aGljaCB3YXMgbGF0ZXIgYmFja3BvcnRl
ZCBhcwo+ID4gNTNhNzZkNjMzYjg2IHRvIHRoZSBsaW51eC00LjkueSBicmFuY2guCj4gPgo+ID4g
UmV2ZXJ0aW5nIHRoYXQgY29tbWl0IGZyb20gNC45LjE0IG9yIDQuMTQuMTY5IC9maXhlcy8gZGV2
aWNlIHJ1bm5pbmcKPiA+IG91dCBvZiBtZW1vcnkgcHJvYmxlbS4KPiBMb29rcyBsaWtlIGl0J3Mg
bWlzc2luZyBhIGJhY2twb3J0IG9mCj4KPiBjb21taXQgYTg0ZDAxNjQ3OTg5NmI1NTI2YTJjYzU0
Nzg0ZTZmZmM0MWM5ZDZmNgo+ICJbUEFUQ0ggbmV0XSBtbGQ6IGZpeCBtZW1vcnkgbGVhayBpbiBt
bGRfZGVsX2RlbHJlYygpIgoKVGhhdCBmaXggd2FzIGJhY2twb3J0ZWQgdG8gbGludXgtNC4xNC55
IGFzCmRmOWMwZjhhMTVjMjgzYjMzMzllZjYzNjY0MmQzNzY5ZjhmYmM0MzQgYW5kIHdhcyBpbmNs
dWRlZCBpbgp2NC4xNC4xNDMuIE1lbW9yeSBwcm9ibGVtIHN0aWxsIGV4aXN0cyBpbiB0aGUgNC4x
NC4xNjkuCgotLSAKUmFmYcWCCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
