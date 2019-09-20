Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E61AB8C6D
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 10:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOsFG3C24yNHP7JrvOydooY/k+JfWlnIM8axhv1Z5WY=; b=lHn5HDMWj8XizS
	z06foZ+EB1GRFCSJLxr1FQGIM6+n6hMLp/texyCmMcVaYQz/MFuq0kF/1seVUIVfSYFWeoInr0iFh
	Vim9PKRG4qBZjrKpf357nSbhkF7Hh3sQWR38PLj/YwJLlx8iKCcFgnxM5pCj6zs56rhAkjotE39vp
	1ka9tyT1eyNVzcvs9P72g/ENTuUPi6S3vFKe8V2Sd+fuYma1vaBlva+5Egoi0+iafxN8ywvZSQG2D
	2DS4wKanxFtxkLWcqee0zIUkFdZsnuzom2P2rId7/vkPBzsigeY0mlRUPvDmOjd2Ngh/S5vLi2zph
	wgt/lUTRWNai1g+/JNZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBE37-0007q0-Ml; Fri, 20 Sep 2019 08:13:53 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBE2y-0007pY-3M
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 08:13:45 +0000
Received: by mail-io1-xd44.google.com with SMTP id n197so14167548iod.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Sep 2019 01:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=suAT46ZTepu2aZm2d4toFHCosLPA9ZR966x1sGN8kAU=;
 b=fhcFEQekYlHEwufJV+WXY5dKeyDcApQSod76TzkC+OXxIogWJYi2NTue7BrHj/+1Np
 87uqJectgJa/BKk9WwbpoDQ9AfSIn0te2apkjN46hkrVTysFk1KThggj8Ub7aTcaXTnh
 YDQgZ5A2RBoRpykpD9StShpyWByE3LIcdfVFiIubKrEx2yJI8y7Ha8SgM8yWIOtEmEnm
 visle56PKotcPvS7DXqamgBkkRZ+drYVQa0YTEcxdenv2BEOTELfe2PgIQ34svpDr2Lc
 yJfZ6cjPXvpEqAREMhgbMK/GMVVDps20pbT2ZKtDXXf8Vumib+Lj/dKGMCMyKWgW2gU/
 PWuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=suAT46ZTepu2aZm2d4toFHCosLPA9ZR966x1sGN8kAU=;
 b=O4u5DS2vbTY4Q1BImOn2xaqpBXWqWwRt3fiOpPkGTYOrpIIen92joLC0F9p+ZeBo+j
 0uYtprFJeicfWtSK7KPfjVoXIuTORCcoImw5X67dDoADl9ZGA7WjunPYd/Zl18al9j4Q
 1AwXGwStXUvjRTBzgx13Pj75ZC3xBZVpCcK+r/WXr+XSAcSzVdPmlxuc/ndPavCJ4ZHq
 GtLOAbBRbEeN9vExZTuVwmX7vgxJ5VfFrzD9lRFuo2vfGJt8zAmx0lN10RaWYqye4Ps9
 JG8FT6J7OjAR1m37vFfF7y+bI7OU7Y56EIDl05JbIHqGp+rnpWcBg4TNC9Op/MDQq9Ss
 RS3A==
X-Gm-Message-State: APjAAAWXoeMIMkaJe96VlCN/aXShJSu8yAaP2sJTlpYBcEZVy7SC/HZU
 9MirM5e5/ZwP9YUFEn6hAbaBvlHGAVw77HSiL3ZLzg==
X-Google-Smtp-Source: APXvYqxOgR1lzGWy6xl7/Db/kF48F0mI2lg/cNPhb5sSiWhTwNPMYX5lidkUuuUjgcYdgAkHaDdseFG44yQhxHKpdrM=
X-Received: by 2002:a02:93e5:: with SMTP id z92mr18552422jah.8.1568967222540; 
 Fri, 20 Sep 2019 01:13:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
 <20190623092448.27880-2-kristian.evensen@gmail.com>
 <20190920075558.GA21104@meh.true.cz>
In-Reply-To: <20190920075558.GA21104@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Fri, 20 Sep 2019 10:13:31 +0200
Message-ID: <CAKfDRXig69o3Jad-KPBizY9_U41=tMjpS7+G-QCAOp7pCm5usQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_011344_169837_BB5F3585 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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

SGkgUGV0ciwKCk9uIEZyaSwgU2VwIDIwLCAyMDE5IGF0IDk6NTYgQU0gUGV0ciDFoHRldGlhciA8
eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gY291bGQgeW91IHBsZWFzZSByZWJhc2UgdG8gc2VyaWVz
IHRvIHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSB0cmVlPyBJIHdvdWxkCj4gbGlrZSB0byBhcHBs
eSBpdCwgdGhhbmtzIQo+Cj4gQlRXIGRvbid0IGZvcmdldCB0byBpbmNsdWRlIHRoZSBsaWNlbnNl
IGNoYW5nZSBBQ0tzLgoKSSB3aWxsIGRvIGl0IGR1cmluZyBvciByaWdodCBvdmVyIHRoZSB3ZWVr
ZW5kLiBCdHcsIGNhbiBJIGNvbnNpZGVyCnRoaXMgeW91ciBBQ0sgb2YgdGhlIGxpY2Vuc2luZyBj
aGFuZ2UgYXMgd2VsbD8KCktyaXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
