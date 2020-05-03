Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480C71C298D
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 06:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKyPVKdNhaLMpDVn51bVu1+1TQ/jpwEovB8hGnPq+xY=; b=XcWEGIXKzPr/Sj
	ALDEBSTvnEwN7NVFPOT/5nigNraYaPSin0//0kTN0l8zstV8Nb7KzdnmN8IhskgglXOtQrm8cq72M
	22Qt5YeJJtF4tyVJ6C3eo3LpB5UT4/EFHjwKI7b0SXcEt0483iI6mzSfSMNAs0dtocYqVCfVk0xzm
	6nfOToAEDdAfj9IzgSUpnH/+aW+5U+erJszGhkI0Uo2OuoH8iR6hml9buOi3XiN0al6OXcyOQD/v/
	Fvv0SJiixKWyZ8SflISAuLaPvtvg7I9ZjehHCWxyT0UQTgRTEVGcM/Y+ASl6yQberJ9P1hjNXPjTa
	V9RKE0BASwXtV8VlqWfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV5oJ-0003eF-VO; Sun, 03 May 2020 04:01:00 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV5oE-0003cw-B2
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 04:00:55 +0000
Received: by mail-oo1-xc31.google.com with SMTP id i9so1622682ool.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 May 2020 21:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4rbkndEhccUDDC40FTn2OYtjRngyx3h/w/AAXF7fhN4=;
 b=hxYggiBFXB5QyPTDkVSYoXC6nvTVREW83fukyvUw17wpX6Au9n4rwUwMvnxNIRwnCj
 /tKR4jReY72pD1PJKZL43My7I664Walmp95BDonLoMojztbbw4GjcvjNCoZShMH5fkyl
 7ELjY/CNa5nNTC4A8E0E/AiSP2MIeuj02bTqcq+J2Q2nTboP6SFiv24H2GT3gM1vzQbY
 WbCTgSd0FwSEtgV0zkF6ppkCbbWPTIDqVKi8M6EZ8VNizTiTbhsf0KauQH1LHnMjZ18A
 jxi5R0Xu6wgnhIt99iiMIF/iGJ7XjdIec4piBmLWcZuDsLKaY1fr4IlbCjIcHSHX3yO3
 Jo/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4rbkndEhccUDDC40FTn2OYtjRngyx3h/w/AAXF7fhN4=;
 b=IV/zqRg9I+9AcDIul7r+ATQTB3Ox84wymQZtCV5pOX0vFMHVwlLREnRmydYFURm9y7
 QTihBDkPwItKdP+l044N4oxUFthBrMNyt8alxR/h0GW0xIGB8apyKYnBdlQR7GrLoxsd
 WfE4iF6Ue2c7tpXuEm4P03RT0nW09pnYPDQbKJzjZBsDF8jwLy8w3E3HOx9gfJdgxfep
 1i6rVZ9AD7x2Xc3LEv4gMPFoRE2EagtkbjLuNULGXySBjCxmu/N4Cff+IAvcHw4u4Oy7
 5lS9EpLUTCZ9DRPK5Ja0S6AMums+Ub6TWF+siEcJaIJKQmOejotWrOkyOQlHnkHSPtu+
 mFaA==
X-Gm-Message-State: AGi0PuZtSDzWSorQP5QzB2ph7JcGsaXWLMG9IK7v05YrLLDzDfvIMzqP
 slfvwqus25K1ptL+x7jQURXy7Ik06vSGsV41W/M=
X-Google-Smtp-Source: APiQypLce5KjtkJdUw5vVTUbAdDpQkRLIgkkm/OYQrPU6K4DlQ1WM1UmnvzzeiZbNNzc87b+KwqX1BfA9RapbglN/K4=
X-Received: by 2002:a4a:eac4:: with SMTP id s4mr10025258ooh.24.1588478452143; 
 Sat, 02 May 2020 21:00:52 -0700 (PDT)
MIME-Version: 1.0
References: <C69F94A6-C2A8-4836-B01F-C184013F9B30@redfish-solutions.com>
 <001301d620dc$1f0ba880$5d22f980$@adrianschmutzler.de>
 <875E4890-4ABC-4AFA-A7B3-F47642BA6AF0@gmx.us>
 <6A13D3D4-7E4A-4730-A817-DC3FEFF4D5D0@redfish-solutions.com>
 <CA+BfgNL=BgMipVmv6_xcaqH=F7ro0k-AURsU=CWe2R+3b4qH5Q@mail.gmail.com>
 <BC52B358-08DB-41F9-9B03-6DD5B53EBA1C@redfish-solutions.com>
In-Reply-To: <BC52B358-08DB-41F9-9B03-6DD5B53EBA1C@redfish-solutions.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sun, 3 May 2020 12:00:40 +0800
Message-ID: <CAJsYDVLaRPB4hw2WeBXE408eiy=_Tw3igmR_jiDZ_=m7hnnqsQ@mail.gmail.com>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_210054_432120_D8FC5387 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c31 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Proposal: Differentiating "skinny" platforms
 from others... (resending)
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
Cc: Dustin Howett <dustin@howett.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkhCgpGaXJzdCBvZiBhbGw6IFBsZWFzZSBkb24ndCB0b3AtcG9zdCBsaWtlIHRoaXMgb24gbWFp
bGluZyBsaXN0cyA6KQoKT24gU3VuLCBNYXkgMywgMjAyMCBhdCAxMDo0MCBBTSBQaGlsaXAgUHJp
bmRldmlsbGUKPHBoaWxpcHBfc3VieEByZWRmaXNoLXNvbHV0aW9ucy5jb20+IHdyb3RlOgo+Cj4g
SeKAmW0gbm90IGNvbnZpbmNlZCB0aGF0IHdvdWxkIGJlIG5lY2Vzc2FyeSwgb3IgdGhhdCB0aGlz
IHByb3Bvc2FsIHdvdWxkIGNyZWF0ZSBhbnkgbmV3IGNpcmN1bXN0YW5jZXMuCj4KPiBBbiBleGFt
cGxlIGlzIHRoYXQgY2VydGFpbiBhcmNoaXRlY3R1cmVzIGFyZSBzdXBwb3J0ZWQgYnkgTVVTTCBh
bmQgb3RoZXJzIGJ5IHVDbGliYywgb3IgZWdsaWJjLCBldGMuICBUaGF0IGluIHR1cm4gbWVhbnMg
dGhhdCBzb21lIGZ1bmN0aW9uYWxpdHkgaXMgYXZhaWxhYmxlIGFuZCBvdGhlcnMgbm90LCBiZWNh
dXNlIG5vdCBhbGwgcGFja2FnZXMgY29tcGlsZSBhZ2FpbnN0IGFsbCBhcmNoaXRlY3R1cmVzIGFu
ZCBydW50aW1lcywgZXRjLgo+Cj4gVGhlIHNjaGlzbSBvZiDigJxmYXTigJ0gdnMuIOKAnHNraW5u
eeKAnSBkZXZpY2UgaW4gc29tZSBjYXNlcyBtaWdodCBiZSBhbiBhcmNoaXRlY3R1cmFsIGlzc3Vl
LCBhcyBzb21lIHByb2Nlc3NvcnMgb3IgU29DcyBkb27igJl0IGhhdmUgdGhlIHBoeXNpY2FsIGFi
aWxpdHkgdG8gYWRkcmVzcyBtb3JlIHRoYW4gTiBtZWdhYnl0ZXMgb2YgbWVtb3J5LCBzbyB0aGV5
IGFyZSBhcmNoaXRlY3R1cmFsbHkgY29uc3RyYWluZWQuICBJdOKAmXMgY29tbW9uIGZvciAzMi1i
aXQgcHJvY2Vzc29ycyB0byBoYXZlIHVuZGVyIDRHQiBvZiBtZW1vcnkgYW5kIGluIHNvbWUgY2Fz
ZXMgc3Vic3RhbnRpYWxseSBsZXNzIHRoYW4gNEdCLgo+Cj4gTGlrZXdpc2UgQVJNNjQgYW5kIHg4
Nl82NCBwcm9jZXNzb3JzIGNhbiBhbG1vc3QgZ3VhcmFudGVlIHBsYXRmb3JtcyBoYXZpbmcgYXQg
bGVhc3QgMUdCIGFuZCB1c3VhbGx5IG1vcmUuCgpUaGF0IHdpbGwgYmUgY2hhbmdlZCBzb29uLgpT
b0MgdmVuZG9ycyBsaWtlIFF1YWxjb21tIGFuZCBNZWRpYXRlayBhcmUgc3RyaXBwaW5nIHRoZWly
IG1vYmlsZQpTb0NzIGZvciByb3V0ZXIgc29sdXRpb24uIE5vd2FkYXlzIHRoZXJlIGFyZSBzZXZl
cmFsIGFybXY3L2FybXY4ClNvQ3MgZm9yIHJvdXRlcnMgKGUuZy4gaXBxODA2eCBpcHE0MHh4IG10
NzYyMiBtdDc2MjkpLiBIb21lCnJvdXRlcnMgZG9uJ3QgcmVhbGx5IG5lZWQgYSB0b24gb2YgbWVt
b3J5IGFuZCBmbGFzaCBzcGFjZSBzbyByb3V0ZXIKdmVuZG9ycyBhcmUgbGlrZWx5IHRvIGtlZXAg
dXNpbmcgbGltaXRlZCBmbGFzaC9yYW0gZXZlbiB0aG91Z2ggU29DCnN1cHBvcnRzIG1vcmUuIFRo
ZXkgdHlwaWNhbGx5IGNvbWUgd2l0aCAxMjhNLzI1Nk0gcmFtIGFuZAoxNk0gTk9SLzEyOE0gTkFO
RC4KQW4gZXh0cmVtZSBleGFtcGxlOiBUUC1MaW5rIHNlbGxzIG1lZGlhdGVrIHRwMTkwMGFjIChh
IHN0cmlwcGVkLWRvd24KbXQ3NjI5IGFybXY3IHNvYyB3aXRoIGEgdHAtbGluayBiYWRnZSA6UCkg
cm91dGVycyB3aXRoIDRNIGZsYXNoIGFuZAozMk0gcmFtLgoKVGhpcyBraW5kIG9mICJmYXQgcGFj
a2FnZXMiIHNlcGFyYXRpb24gaGFzIHRvIGJlIGEgcGVyLXRhcmdldCBvbmUgbGlrZQpjdXJyZW50
IFNNQUxMX0ZMQVNIIHByb3BlcnR5LCBhbmQgd2UgZWl0aGVyIG5lZWQgc29tZSBjbGV2ZXIKcGFj
a2FnZSBmZWVkIHNldHVwIG9yIG1vcmUgc3RvcmFnZSBzcGFjZSBhbmQgYnVpbGRib3QgZGVtYW5k
LgoKLS0gClJlZ2FyZHMsCkNodWFuaG9uZyBHdW8KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
