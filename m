Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDF015AD87
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 17:38:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMjVKHpQtdYodIYiPrIObxUUqJu2MGAayUtu5EpqKPA=; b=JVeIGF2Vyzd+Oq
	tfA9pbceuPbV4MjxUPcAnU6pYeDMBVjRQlShnIKFmJEAxN6gttz5wqVNzDZ663YU+Mr+/YVrAhm88
	A8XL1IqT7J6LWnHO+5hQAbSXBJloXFzjdEEpwuj/KmJGAS5b0kfgQdfufOpIoXIfNImSg6jskeT46
	jY2uXBvVnOa7NgpLW9x97LfcXaVX6zFvTjdulAue/3a0DTUqV4DLG2kiRdl3ASiIV+hantpnLBKaq
	LF853d+Nt7/UeNO1rmlqnwtj1gTIGLH8PAfcBGz799UETzZMS6N5UJ3GAx32aaFMxRj4F61SFTzmW
	ITwJjvEJO033mR1KdTsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1v2C-0003U1-0U; Wed, 12 Feb 2020 16:38:44 +0000
Received: from mail-yw1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1v24-0003TZ-G2
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 16:38:37 +0000
Received: by mail-yw1-xc2e.google.com with SMTP id i126so1136568ywe.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 08:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gibzdEVXB82Qx1HP08SGuhGeq9Nzy0+hfAvsK0bNLJ8=;
 b=W8bkABIS1YSs3IijTUrz5mgVqT1zS0+Zpjj8Uc5CEXYXJkheKJC0pj4W7wexZmbacv
 Vb/cE7qdHLyW73Hn4glRIuMDG40lL+QuH3oF6Ly7YiFNOb5s8Nc7pNL1zLGcAKXkM8nN
 e9lHTHpn/aWMSuPEBhjM20nUiDw2uZm+QY1LHlHAqX3Bzf9JwEJZpyw8aar1Tfo9+orP
 UEkWrQNpoLJRPexWqsIPfEGEmvfoJERHk7CNbAXvr4vK47sUv9BuzbuNjWb1I3I2DuDY
 VnrVMKfywRo5ZroWOQLTA6/madNXyS3YJdfuC2OjQag+YxO3BySKkt2Dl4ahOcuPav3n
 Zo7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gibzdEVXB82Qx1HP08SGuhGeq9Nzy0+hfAvsK0bNLJ8=;
 b=or6IvUC58Cf1WvMmiD+WxXLEhwt3SjCZmquGcF05KFHMq9opkzmLHz4a7zxa6kugTA
 zCY0U8HmxUEumVG/dv0KuRTC7vaW8G888ez23rpR+9b1BVmfVM1mZfYPNhlb7f/cCJiZ
 /AqSzhhPgBk9wcpyA4X0G/KxQ5YwO9gi6A7fumV7NeW3/iBTT9gk2Ylxx7x2RhLyCRin
 KCuOKZ5TJ2Eg4VOmq9B12umgvXHLdQJTVuvefydeKjlwUU3CKaO6wLTyrDyDyyz+VHBY
 5XsfNU92+dYyvR/agEaK/d1FPswa02uk25yTrXppS7tLe8zLW68Nh0sZq3lVMiySTG8I
 eT4A==
X-Gm-Message-State: APjAAAXPpwkhpcylhTciVnTQpcIIG8G4YumSx7MQH9vE8CKG7zcUoODy
 TmkfMPe+jn7vzWyAIAvl6GoGtYDajAvRr8DZ7ru7xg==
X-Google-Smtp-Source: APXvYqyNfWeDh52fowAXyvz/cI6tg4rm3jt2JYEr+zIUwR+A6UdItVniG+PBsRpqRUGeA5xC38oB/M8aw1QU/gRkAF4=
X-Received: by 2002:a0d:e28c:: with SMTP id l134mr11374418ywe.54.1581525512575; 
 Wed, 12 Feb 2020 08:38:32 -0800 (PST)
MIME-Version: 1.0
References: <CACna6rwe55gmb19H+EToF_jDOEDVqDOJkzhqGW-6G61=Gn2ReQ@mail.gmail.com>
 <4d01d640-39da-6aa0-5027-2d96f7180bba@kresin.me>
In-Reply-To: <4d01d640-39da-6aa0-5027-2d96f7180bba@kresin.me>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 12 Feb 2020 17:38:21 +0100
Message-ID: <CACna6rxfX9ObUx-XCPdgq9H+vqSVn4bZxe8J4qnRAdMtOxJ2Eg@mail.gmail.com>
To: Mathias Kresin <dev@kresin.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_083836_535669_4892F2E1 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c2e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Network broken with kernels 5.2+
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCAyOSBPY3QgMjAxOSBhdCAwNzowMCwgTWF0aGlhcyBLcmVzaW4gPGRldkBrcmVzaW4u
bWU+IHdyb3RlOgo+IDI4LzEwLzIwMTkgMjM6MDEsIFJhZmHFgiBNacWCZWNraToKPiA+IFVzaW5n
IE9wZW5XcnQgd2l0aCBrZXJuZWxzIDUuMisgcmVzdWx0cyBpbiBicm9rZW4gbmV0d29yay4gSW50
ZXJmYWNlcwo+ID4gc2VlbSBPSyBidXQgSSBjYW5ub3QgcGluZyBteSByb3V0ZXIgYW55bW9yZS4K
PiA+Cj4gPiBUaGlzIHJlZ3Jlc3Npb24gaXMgY2F1c2VkIGJ5IHRoZSB1cHN0cmVhbSBjb21taXQK
PiA+Cj4gPiBjb21taXQgYjQyNGU0MzJlNzcwZDZkZDU3Mjc2NTQ1OWQ1YjZhOTZhMTljNTI4NiAo
cmVmcy9iaXNlY3QvYmFkKQo+ID4gQXV0aG9yOiBNaWNoYWwgS3ViZWNlayA8bWt1YmVjZWtAc3Vz
ZS5jej4KPiA+IERhdGU6ICAgVGh1IE1heSAyIDE2OjE1OjEwIDIwMTkgKzAyMDAKPiA+Cj4gPiAg
ICAgIG5ldGxpbms6IGFkZCB2YWxpZGF0aW9uIG9mIE5MQV9GX05FU1RFRCBmbGFnCj4gPgo+ID4g
UmV2ZXJ0aW5nIHRoYXQgY29tbWl0IGZyb20gdGhlIHRvcCBvZiA1LjIgb3IgNS4zIGZpeGVzIG5l
dHdvcmsgZm9yIG1lLgo+ID4KPiA+IEFueSBpZGVhcyB3aGF0J3Mgd3Jvbmcgd2l0aCBPcGVuV3J0
ICYgYWJvdmUgY2hhbmdlPwo+ID4KPgo+IEhleSBSYWZhxYIsCj4KPiBhc3N1bWluZyB5b3UgYXJl
IG9uIGEgdGFyZ2V0IHVzaW5nIHN3Y29uZmlnLCB0aGlzIHBhdGNoIHNob3VsZCBmaXggdGhlCj4g
YnJva2VuIG5ldHdvcms6Cj4KPiBodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0L3N0
YWdpbmcvbWtyZXNpbi5naXQ7YT1jb21taXQ7aD0zYTc3MmVlMjMxZTRiNGMyYzUzN2Q4ZDU0MWYw
MDFiNTI0MmI5YzM1CgpEbyB5b3UgbWluZCBpZiBJIHB1c2ggeW91ciBwYXRjaD8gSSBzdWNjZXNz
ZnVsbHkgdGVzdGVkIGl0IHdpdGggNS40LgoKLS0gClJhZmHFggoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
