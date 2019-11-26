Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93B110A6F2
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 00:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BA+1qpbcBb8p8e1l62tmqCcV1R53mb9CbBsUDBe4yiQ=; b=Sq9wkAhnp/gl7e
	lpo7egZXiAHV7Cr9A31p0IAPHJ5EHHVAUF7OFIBmT6EJyXMNqIFcXJAX8F6FYPbCCouXGb3Tuoej9
	gvXr4ATigqh9EISwcliVMMYmYZ0pxCYWduSlNf7jS3aQsJbmpEkEmowfM8rKilFro4qupBQLwYrST
	0oIXwMQTo5csKfuJWimxW5TaMbxhGDFyrEnX2r6FILvax0Cvbuy7C6E6u8KqUnx/OObdwdgROFqKf
	Le+QiPy2LkiGRo0TKG7MoLbE/FPk7+TT/olNJilZwI6BlmMSMpPqd9c/Kv2Y2anR1/RNetFkMeiM6
	UQ0ORv226AwOse/YV6eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZk0H-0005Mv-OC; Tue, 26 Nov 2019 23:12:17 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZk09-0005MN-6p
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 23:12:10 +0000
Received: by mail-il1-x141.google.com with SMTP id f6so15255914ilh.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 26 Nov 2019 15:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LZ+M73J/b8wL8KxxJ70pBEz5413RAYC5gnJBPbL4Jp8=;
 b=qyyq4uSmv+hKXvKYJsdie/Hh4vrUie3JUz+8EW2z0jT4hkHBwyLyo2m+enOjNLXORX
 1TdjA8tUQuSxpfd67/M3W+t7l6rQR73N9zBzYng/WOLYrVjW6nfXS2D3Zu312ZGQSAxH
 YZjOxeX36SPfkvCMHM/dLAFyInrgrJHUwCHvKE5qxNshOLNfHFxLK2XQnoNPLtrVEYuA
 +lnlST+oRF6zDly6AGgYsZ0xgA4HOR0k0i/mRFVcfimmJ/VOolgWuKmkeux/3iaPC4zg
 f8JFrYH5freYpdrpNzyH00/rFfal1SuEISPI8ZfH4oeIlsq6rdFuUMDro9wqXFXR4Acy
 d/ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LZ+M73J/b8wL8KxxJ70pBEz5413RAYC5gnJBPbL4Jp8=;
 b=ZcWm/KDZBScwEFa8+AhBeIRp2EoHb9S6KEsjEmMGJ0cCGlAievs/UZqfySox1anTlX
 GrD8a3ma2TdEy9Ul7KFBS7FX0hsCaixsHPiE0M6F1Q+G+S8ecnizlmti931Kb/ADL1rN
 jqDKLw953EYL8US3Fr58hdzDJwC38Re5QJGkBTVWQwSxDbrqSc0NfXplr1UcXPOtVMoR
 0Z8iHumPymrVJ3GKtYEHWuyz6vEb9sQKr1a37U1z7syJircPKyhSnVuW6A1qOix/qXvH
 vnNQ98BHaZfBScSzz2zNipOTuw6oleix8HsgSHvmyIl8RO0M5Q678FeAAGPYFdGpUruJ
 GdSw==
X-Gm-Message-State: APjAAAVPbBxcsqDqcFoqHEqNiDfOCMmVcd0NyD5huh5V8hZfAQ1F0EW8
 V6TJeAVoGU8p4y8AXKE/9BlkkbhpH18LGgHBU6ImLTBU
X-Google-Smtp-Source: APXvYqzZ/p+2iIFCWbw5tuK3g6xUXtvDD+csVC/HG0s+xvv36eIaXfe7IdcWy9Gwya1V73ooxyhz5p0VGE/IFymnWwM=
X-Received: by 2002:a05:6e02:542:: with SMTP id
 i2mr41026265ils.295.1574809927588; 
 Tue, 26 Nov 2019 15:12:07 -0800 (PST)
MIME-Version: 1.0
References: <E1iZHVc-0001Jn-Nd@rmk-PC.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191126225009.GQ1344@shell.armlinux.org.uk>
In-Reply-To: <20191126225009.GQ1344@shell.armlinux.org.uk>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Tue, 26 Nov 2019 15:11:55 -0800
Message-ID: <CAOdf3gqrAoKe=0utX9ZwtzrAxY75tCzwh6byujUxJJ978wcBgQ@mail.gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_151209_271231_6DEE6E43 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] kernel: add backported
 phy/phylink/sfp patches
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

SGVsbG8gUnVzc2VsbCwKCkxlIG1hci4gMjYgbm92LiAyMDE5IMOgIDE0OjUwLCBSdXNzZWxsIEtp
bmcgLSBBUk0gTGludXggYWRtaW4KPGxpbnV4QGFybWxpbnV4Lm9yZy51az4gYSDDqWNyaXQgOgo+
Cj4gT24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMTI6MDc6NDNBTSArMDAwMCwgUnVzc2VsbCBLaW5n
IC0gQVJNIExpbnV4IGFkbWluIHdyb3RlOgo+ID4gUmVuw6ksCj4gPgo+ID4gSSBjYW4gc2VlIHlv
dXIgcmVwbHkgaW4gdGhlIE9wZW5XcnQgYXJjaGl2ZXMsIGJ1dCBJIG5ldmVyIHJlY2VpdmVkCj4g
PiBpdCwgc28gSSBjYW4ndCByZXBseSB0byBpdC4uLiAgKEknbSBub3Qgc3Vic2NyaWJlZCB0byBv
cGVud3J0LWRldmVsLikKPiA+Cj4gPiBZZXMsIGl0IGNvdWxkIGJlIG1hZGUgZ2VuZXJpYyBJIHN1
cHBvc2UsIGlmIHlvdSB1bmRlcnN0YW5kIHRoZQo+ID4gT3BlbldydCBidWlsZCBzeXN0ZW0gYW5k
IHdoZXJlIHN0dWZmIG5lZWRzIHRvIGJlIHBsYWNlZC4gIEFueQo+ID4gc3VnZ2VzdGlvbnMgd2hl
cmUgdGhlc2Ugc2hvdWxkIGdvPwo+ID4KPiA+IFNvcnJ5LCBidXQgSSd2ZSBhbHJlYWR5IHNwZW50
IG1hbnkgaG91cnMgdHJ5aW5nIHRvIGdldCB0aGUgT3BlbldydAo+ID4gYnVpbGQgc3lzdGVtIHRv
IGEgc3RhdGUgdGhhdCBJIHdhcyBhYmxlIHRvIGJ1aWxkIGp1c3QgYSBrZXJuZWwgYW5kCj4gPiBh
c3NvY2lhdGVkIGttb2QgcGFja2FnZXMgdGhhdCBJIGRvbid0IGhhdmUgdGhlIHBhdGllbmNlIHRv
IHRyeSBhbmQKPiA+IGRlbHZlIGludG8gdGhlIGFtYXppbmdseSBjb21wbGV4IG1ha2VmaWxlcyB0
aGF0IHNvbWVvbmUncyBkcmVhbXQgdXAuLi4KPiA+IE15IGltcHJlc3Npb24gaXMgdGhhdCB0aGUg
YnVpbGQgc3lzdGVtIGlzIGRlc2lnbmVkIHRvIGtlZXAgcGVvcGxlIG91dCEKPiA+Cj4gPiBSdXNz
ZWxsLgo+Cj4gQWxsLAo+Cj4gU29tZSBndWlkYW5jZSB3b3VsZCBiZSBtb3N0IGhlbHBmdWwuICBT
aWxlbmNlIG9uIHRoZSBvdGhlciBoYW5kCj4gd2lsbCByZXN1bHQgaW4gbm90aGluZyBjaGFuZ2lu
Zy4KCkZvciBmYXN0ZXIgcmVzcG9uc2UgdHJ5IElSQyAjb3BlbndydC1kZXZlbAoKPiBJdCdzIGJl
ZW4gc3VnZ2VzdGVkIHByaXZhdGVseSBieSBUZWx1cyB0aGF0IHRoZXkgZ28gaW4KPiB0YXJnZXQv
bGludXgvZ2VuZXJpYy9iYWNrcG9ydC00LjE5LiAgV2hhdCBhYm91dCBudW1iZXJpbmcsIGhvdwo+
IGRvIHRoZSBwYXRjaCBudW1iZXJzIGdldCBhbGxvY2F0ZWQ/ICBEbyBJIGp1c3QgcGljayBzb21l
dGhpbmcgYXQKPiByYW5kb20/Cj4KPiBTb21lIGNsdWVzIHdvdWxkIGJlIHJlYWxseSB1c2VmdWwu
CgpUaGlzIHBhZ2UgbWlnaHQgaGF2ZSBzb21lIGFuc3dlcnMKaHR0cHM6Ly9vcGVud3J0Lm9yZy9k
b2NzL2d1aWRlLWRldmVsb3Blci9idWlsZC1zeXN0ZW0vdXNlLXBhdGNoZXMtd2l0aC1idWlsZHN5
c3RlbSNuYW1pbmdfcGF0Y2hlcwoKRXRpZW5uZQoKPgo+IC0tCj4gUk1LJ3MgUGF0Y2ggc3lzdGVt
OiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCj4gRlRUQyBi
cm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMi4xTWJwcyBk
b3duIDYyMmticHMgdXAKPiBBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93
biA1MDBrYnBzIHVwCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
