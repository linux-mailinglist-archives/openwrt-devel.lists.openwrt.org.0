Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5C488A6F
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 11:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGi7NEjX2xLn9kln+OEDm3Rbero0T0UuH8jcEQ1lyl0=; b=b7rzJXVhc5N7pD
	QtGkk2R+P4aLeuY36ShNe2li82AkZ5ykscblChEPpYuXpdNepq1T5yCLfVuzswz3YFCKbzQJeJgAJ
	BDiaLn2HZ+FK3E1O+guTeidOUP0uu9hOumIwT+y8/63VZyrCjWparb5QBS1L3LsKsXODzRBVSckNY
	LVrOvZSXpnk8ywvQzIb18J3dH7ihKn9616nEU0kqxr4U4DGG6blNAWZVRSEKm3tR+Tgndm1R9JBvr
	4WDjhdIbazyWn8CRqdnrBsJbf5keSgpf7pYnYUJPuDIBlo38DRgOATBtILMOmpeAfui7LQAn118Nr
	GeR38s2EUIfpWUtGShNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwO3y-0005o5-MT; Sat, 10 Aug 2019 09:53:26 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwO3g-0005nj-CK
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 09:53:09 +0000
Received: by mail-ot1-x343.google.com with SMTP id q20so142034519otl.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 02:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cWk4CV2Y2kgfWcpqmj3f/IPc1Cajc6aIf29MgY92Wj8=;
 b=XHvY1AK5Pg4L8xR7crmeKS3SA/QBFgr6UKrr8DT83+v4HLpWOWaEwwSFZR6OUUA7fe
 rxoJnKbcQ73InA18dn63To7zoXMUGTOk8fRuORXYYfJNFJ9XvIL4U0zPOUG8Bgzd5K/d
 RlUu+Iojsiz98BLGVBW9bi0qv+1pi/wTtOVHrgn+WbiXVxBdTjwqwZgkX2AF7ibO3iUu
 geVVdJMPGR0s1JHBg2Qbw10xfSowPcmRbR5z2x4n4oa3FSw64rFl4OByALwquwAWAFre
 ikH7ncsKh7EnOSoU0m1m78bzmfCOTm5zyC2KSWEb/U8bpQgZWzn4BiDSmLsXBkM7oFxp
 Be3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cWk4CV2Y2kgfWcpqmj3f/IPc1Cajc6aIf29MgY92Wj8=;
 b=C9+mVnQnnZDCuBqInDZrJ3zUUcXi595UvU7mEQCBK+HUU2tsbtEzVy7TT4CzEsXRNf
 qV8fJm2G1M6Eiy9kjYWuM+W93QhcSL9Bo8k+stEU7+r6hu5Zpk59w0/nzZ8cjDOZQQdE
 Bz4vuRxCabvZ5+9YIuK2f8HxjetaXdlA/ALw7Fc6bwnTBIfdQu+Tuo3cIbRZhdAUSpqA
 PBG8PrnnH3F6mKCkdFuTRvFZ86YnPjddINqQ+86vRpJJeahiyOGy3romx0LAPJkVB0+l
 sYELGbA9KBFbJKBDe9TKWTdccUUpIzqBzS/Olb0NiOx3kSh/fH8IAjKG/wEb9xPq4S+E
 UBgA==
X-Gm-Message-State: APjAAAUR7F/DM4h8y05dYgoZL7FmEap66YlA2t5LRch0F8Do2++EddGh
 V19AwN8hFvl+zhhudo1kynF6/l27QvW4G4920ms=
X-Google-Smtp-Source: APXvYqz680JUl3PwMzHA304BEZxgzMwVpUJNEum7UReq/wu6y9uC+vOCFEOXVdonM7tqMugtVr10JPomoaPxH1Stczk=
X-Received: by 2002:a5d:924e:: with SMTP id e14mr23867385iol.215.1565430785669; 
 Sat, 10 Aug 2019 02:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
 <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
 <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
 <CANoib0H=v=H8wywMgEtoEZaVLOMQ9JKNfs3FWtWt996kiCxiiA@mail.gmail.com>
In-Reply-To: <CANoib0H=v=H8wywMgEtoEZaVLOMQ9JKNfs3FWtWt996kiCxiiA@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 10 Aug 2019 12:52:54 +0300
Message-ID: <CANoib0FY9U+LhW4UE9effHuJJabX9QFnmHD0Vj6e_gdCEmzE-A@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_025308_445734_2B36C93D 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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

SSB0ZXN0ZWQgZ3Bpby1rZXlzIG9uIGRpcjgyNWIxIGFuZCBkaWRuJ3Qgc2VlIGEgbm90aWNhYmxl
IGNoYW5nZQphZ2FpbnN0IGdwaW8ta2V5cy1wb2xsZWQuIEJvdGggbWlzcyBldmVudHMgYW5kIHdv
cmsgcG9vcmx5LgpTbyBubyBvYmplY3Rpb25zIGZvciBhIHN3aXRjaC4KCtC/0L0sIDUg0LDQstCz
LiAyMDE5INCzLiDQsiAxOToyNywgRG1pdHJ5IFR1bmluIDxoYW5pcG91c3BpbG90QGdtYWlsLmNv
bT46Cj4KPiA+IFRoaXMgcmVjZW50IFB1bGwgUmVxdWVzdCB1c2VkIGdwaW8ta2V5cyBvbiBhcjcx
MDA6IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8xMzU5Cj4gPgo+ID4g
SG93ZXZlciwgSSBjYW5ub3QgZXh0cmFjdCBob3cgd2VsbCB0aGlzIHdhcyB0ZXN0ZWQuCj4KPiBJ
IHdpbGwgaGF2ZSBhIGRldmljZSBmb3IgdGVzdGluZyBhcm91bmQgdGhlIG5leHQgd2Vla2VuZC4g
SSdsbCByZXBvcnQgYmFjay4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
