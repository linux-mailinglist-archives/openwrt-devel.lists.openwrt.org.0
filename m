Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDF6B2B12
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 13:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOufsewI/Qm8GOaS7qr5QCyKxk0upwHvRnjQNGKIWuw=; b=GKYRwwNfPXIRYc
	NJfBhcJZVXi3eOJ+az7++nUIwROuu4iiwvTLVoR4O1pDlrkd0E14/niXlXldb/tvZiCngQW6WQjwM
	MJoEBT1AtcwaNXRhKf8ogSPShM4GGopRPdoSTaIve5VMyDm3LxTZE8vwH8sYLyNKZUbcNAwSB8Jtv
	WY7992+yARLaJ5bGDugb2/2SN5gqX1LSn/OApR5XIUI4dkZL9lBOPSSPNXluOstSuVcsbzuKbF0ZG
	J4nFMLdfav48ofnhsZO1J20MwnThxtc4qxnDUQVuczCpPnhPqVMzBwtG8D9dJejXM7zLi1jeK0/I/
	upEh0D8CGa8l+EMlRhfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9622-0005p6-KS; Sat, 14 Sep 2019 11:15:58 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i961s-0005on-8l
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 11:15:49 +0000
Received: by mail-io1-xd2f.google.com with SMTP id j4so68341398iog.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 04:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PJifPBetPKXlNddh8L6OxrBrpsI/rpaGDqsHXta3rUM=;
 b=MsMr+8MuB0tFB1iOpC5v6bCYGDRtKROg5qmizbRfQmb+lfwoi0jOvDXQHeQEH50s4X
 lCXYEuaAtCRm/IkbZVFPc4FuChPJFOt+3rwfTP10AIPPpHChad6ADyQKYu43Z4bhoxwU
 RTNjkP/bl7SdWgTokQyDxJ5q1OV3Ri6TymclVMBbO1iVNyUWkNN13woQEYt/Qs3SeQoy
 uropNhAMeO2QT0ZTAHu74QB+TDUuSsxppiyGyH8lg1ZfgyPyjG+bpESAHtL3I8BoKzWi
 jQrJdmJGInVIOoPMNFjVQvNXXor585eokuHW3hp8iHdNAM4UQBm2x64ab4wWU7nQQBiP
 2SRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PJifPBetPKXlNddh8L6OxrBrpsI/rpaGDqsHXta3rUM=;
 b=SVZy6tTlWet691GPElPYrXOaPMwwmaMsy+en1BLNJFhhqUhsbAqbIUTfsaFhHPHNlR
 jCpib6NnsfxlKBXcuIbweKFBOGv5UWFqLGNgwANXaK2wro9JvpvRZsZfE0Ro/TDQCaH4
 8fbtQf5/62AfaFvI+XRyfiv7kz3YXSk894T+tmbU+Yz5+6eXJ6P001cJmkzoNC/FhPJI
 8QuBIUaugI5PAjmOVQiY+SV2amSBEH2SzxThSG1I3/KyWwGucWiPEOZdsuvsqjfWlMum
 BtHkup3iuiCebZWQWXHYn8Nl3jinyLOV6H/BL9AkulEU++D/Hj+HQkXzzcQhw3QkSHu9
 66yw==
X-Gm-Message-State: APjAAAXvVQox0enRtq7oPNn1g3IhDKt3kQNPLd4qN7otJdwEFLM5kKmy
 PKfcD82nV91h+QM96KdEEetOg9brOsdZ11zx+do=
X-Google-Smtp-Source: APXvYqw/tXHTBKDg1bEE4jv8p/Ef6DaBZhdc616Yi8WRiQnRYOi+u/VgAPN10Fb/fjwowqryfzWPmTBKW9VULy+3P4E=
X-Received: by 2002:a6b:6013:: with SMTP id r19mr5174962iog.94.1568459746406; 
 Sat, 14 Sep 2019 04:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
 <094d18fd-ac5a-3688-95b6-1391f39fe113@gmail.com>
 <CANoib0EcEre4MRk4-d6Nz2Cm0MmzEMdMXG1zoddyfvAS2xHekA@mail.gmail.com>
In-Reply-To: <CANoib0EcEre4MRk4-d6Nz2Cm0MmzEMdMXG1zoddyfvAS2xHekA@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 14 Sep 2019 14:15:34 +0300
Message-ID: <CANoib0GUo9zP7jEmg1dGUca+66HmLXGHVZwZwupq_6DUKmxBgA@mail.gmail.com>
To: Magnus Kroken <mkroken@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_041548_314104_1C7231BF 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] kernel: bump 4.19 to 4.19.72 broke ath79
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
 Andre Valentin <avalentin@marcant.net>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

0YHQsSwgMTQg0YHQtdC90YIuIDIwMTkg0LMuINCyIDE0OjEyLCBEbWl0cnkgVHVuaW4gPGhhbmlw
b3VzcGlsb3RAZ21haWwuY29tPjoKPgo+ID4gMi4gSXQgbW9kaWZpZXMgYXJjaC9taXBzL2F0aDc5
L2lycS5jLiBUaGUgcGF0Y2ggdGhhdCBmYWlscyBvbiBhdGg3OSwKPiA+IDAwMjctTUlQUy1hdGg3
OS1kcm9wLWxlZ2FjeS1JUlEtY29kZSwgZGVsZXRlcyB0aGlzIGZpbGUgY29tcGxldGVseQo+ID4g
KHdoaWNoIG5vdyBmYWlscywgYXMgdGhlIGZpbGUgY29udGVudCBpcyBjaGFuZ2VkIGJ5Cj4gPiAz
NDMtTUlQUy1hdGg3OS1GaXgtcG90ZW50aWFsbHktbWlzc2VkLUlSUS1oYW5kbGluZy1kdXJpbi5w
YXRjaCkuCj4KPiBJIHJlZnJlc2hlZCAwMDI3LU1JUFMtYXRoNzktZHJvcC1sZWdhY3ktSVJRLWNv
ZGUucGF0Y2ggYW5kIG5vdyBpdCBidWlsZHMgT0suCgpJbml0aWFsbHkgSSBkb24ndCBzZWUgYSBy
ZWFzb24gd2h5IHdlIG5lZWQgdG8gcmVtb3ZlIGlycS5jIGNvbXBsZXRlbHkKaXRuIHRoYXQgcGF0
Y2guIEkgd2FzIGVub3VnaCB0byByZW1vdmUgaXJxLm8gZnJvbSBNYWtlZmlsZS4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
