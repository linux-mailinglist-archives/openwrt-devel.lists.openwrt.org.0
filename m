Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F06914A7E
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 15:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZn0CKSSzKZMWBrMvQKKxvKeGiWXk0ePw0/07ZxGUWo=; b=KJNZ8d1KjqTBUN
	1AJqUrwMCa5I+d0kjSO0ygTpCnEt8bIcRBC7nvsqrp9PFwqrfVOWEVzaS3vtnVSoGdqwAJBc5UkfP
	V+GWxJdPVuPSY9XF8VBvvly4z2fUWwZEsJK+zHFYO12PbXsbPHZNJwy/MibEJuDFVYJuLUbPe/k3H
	CiLpUDlmb9ewbsljOvkfew1wq6AT2peo5/bcYDW6lAvVV6w/N+LCX7r8aGbRl6MwvNersdNWf5fXU
	wiqZN2lcVp926+xH57rAsovE+9ezmOoxjUYd5PGFyJdEk4QaW/nE1IBYp9GLNdtKTx3v6hUyZnxeO
	DnbR+0WShILLn5vDG4wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdDu-0003QC-8i; Mon, 06 May 2019 13:00:02 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdDk-0003Pf-Fa
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 12:59:54 +0000
Received: by mail-qk1-x742.google.com with SMTP id c14so22162qke.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 May 2019 05:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CDHNgoslePYNq8SAFY4/VarGQLS6YVo3xC+MpEeqbms=;
 b=XMP2/4F4Yy9X0hV6ZohrZsDirwV/cDHom777jieS5gtFCFeHhCZiABuvmJOdyWJnZE
 71ilD3CuiLrV0Rity7j2GKZ45CZN7JwfOfmxbPk4u6mAvn8s2swq/NQ1rBUxpt53gilx
 ez5SzftziXQIEck2HZjxmAXnCOzF1uGV9bfE7BXQjOPs8dIQyJOrgFEkeiUOG8/WETH8
 N/+Exehp/pPmWI+fTtMsmEBy90jCiQnl5B2iHfJIOird7fXyxQ1tqKqIY3yYDzUIKnLB
 cTNTJiiQcSwWOK7gzKQI3axG6yzVWudwPPmn6PSv1YwJ4zftagPlILMjVZ1Acnz4xMAy
 vQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CDHNgoslePYNq8SAFY4/VarGQLS6YVo3xC+MpEeqbms=;
 b=ORoU5pwRZaKxuBkTMfhWALx7axOFWSi0kURZznFdxh8Hto1Ujc7OgXye+FgDTjgQ1j
 QL2a9rVDTIqvmFWRqOzCMQYLRSWoU3VczBIQRo1vncCssqN2hpS+mjB+asvUW1+mheGa
 0hYd1wdhW+Ycpz0ZZ3SR2DCbUqOodfe5XP7U2UFI2nYlFL84T/5hF0akvQbfSA3Kfb9Y
 XXB0qlkwaspAbtd8DUxfvInDt/GiEms+yhXK2JVGbFp1QXrm0jkilytYCdSW9LtJpevh
 ipdOIazn8uxlMwueDu0wL3MAn9dZfeI+1qfL0q4N/4VHVxag930arWkFFUSUDFIGDk6A
 rIrw==
X-Gm-Message-State: APjAAAU4WLc/ad1s0yUMhdwqDSFCdkJssFozDfS+KhVSqeFQztRdjeRJ
 WZVTrVDWUK34SM8xI6JqT4O53XJnzwZ8iehYMpE=
X-Google-Smtp-Source: APXvYqztxGypvvU2/dOICBiD0mrFe1uH55jvjNK8xwwcpMuQ/Z28D0cHonrrEikMmQ/gQCgo/gaPawtoYmuycoSf+Ac=
X-Received: by 2002:a05:620a:308:: with SMTP id
 s8mr19491616qkm.171.1557147590703; 
 Mon, 06 May 2019 05:59:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190428151714.5405-1-luaraneda@gmail.com>
 <20190503122643.GC71477@meh.true.cz>
In-Reply-To: <20190503122643.GC71477@meh.true.cz>
From: Luis Araneda <luaraneda@gmail.com>
Date: Mon, 6 May 2019 08:59:27 -0400
Message-ID: <CAHbBuxrbgr8Yzifhh-ZrpTQJ1Z=S7cY7yi-pahskiX_bv0y84Q@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_055952_519802_2C987007 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] zynq: add manufactured to device title
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpUaGFua3MgZm9yIHJldmlld2luZy4KCk9uIEZyaSwgTWF5IDMsIDIwMTkgYXQgODoyNiBB
TSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKPiB5b3VyIGNoYW5nZXMsIGRv
ZXNuJ3QgY29ycmVzcG9uZCB3aXRoIHRoZSBjb21taXQgZGVzY3JpcHRpb24sIHNlZSBiZWxsb3cu
CgpZb3UncmUgcmlnaHQsIHRoZSBjb21taXQgaXMgZG9pbmcgbW9yZSB0aGFuIGp1c3QgYWRkaW5n
IHRoZQptYW51ZmFjdHVyZXIuIEkgdGhvdWdodCB0aGF0IEkgY291bGQgZ3JvdXAgc3VjaCBzbWFs
bCBjaGFuZ2VzIGJ1dCBJCmZvcmdvdCB0byBhZGQgdGhlbSB0byB0aGUgY29tbWl0IHRpdGxlL21l
c3NhZ2UuCgo+IHdoeSBhcmUgeW91IHJlbW92aW5nIHRoZSBkZXZlbG9wbWVudCBwYXJ0PyBJIHRo
aW5rLCB0aGF0IGl0J3MgdXNlZnVsCj4gaW5mb3JtYXRpb24gc28gaXQgc2hvdWxkbid0IGJlIHJl
bW92ZWQgaWYgeW91IGRvbid0IGhhdmUgYSBnb29kIHJlYXNvbiBmb3IKPiB0aGlzLiBQdXR0aW5n
IGFwcGFydCB0aGUgZmFjdCwgdGhhdCBpdCdzIG1hcmtlZCBhcyB0cmFpbmVyIGJvYXJkIG9uIHRo
ZQo+IHZlbmRvcidzIHNpdGVbMV0uCgpJJ20gcHJvcG9zaW5nIHRvIHJlbW92ZSB0aGUgZGV2ZWxv
cG1lbnQgcGFydCB0byBtYWtlIHRoZSB0aXRsZQpjb25zaXN0ZW50IHdpdGggYWxsIGRldmljZXMg
b24gdGhlIHp5bnEgdGFyZ2V0LiBUaGUgYWxsIGFyZQpkZXZlbG9wbWVudC90cmFpbmVyL2V2YWx1
YXRpb24gYm9hcmRzLgpNeSBvcGluaW9uIGlzIHRoYXQgdXNpbmcgdGhlIG1hbnVmYWN0dXJlciBh
bmQgdGhlIG1vZGVsIGlzIGVub3VnaCB0bwp1bmlxdWVseSBpZGVudGlmeSBhIGRldmljZSwgYW5k
IGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gYmVsb25ncyBvbiB0aGUKd2lraSwgYXMgaXQgZG9lc24n
dCBoZWxwIHRvIGlkZW50aWZ5IGEgZGV2aWNlIG9uIG1lbnVjb25maWcuIFdlIGNhbgpldmVuIHJl
bW92ZSB0aGUgImJvYXJkIiBwYXJ0IG9mIHRoZWlyIHRpdGxlICh3aXRoIHRoZSBzYW1lIGFyZ3Vt
ZW50KS4KTG9vayBhdCB0aGUgIkNvbXBleCBXUEo0MjgiLCAiUUNBIEFQLURLMDEuMS1DMSIgYW5k
ICJRQ0EgQVAtREswNC4xLUMxIgpmcm9tIHRoZSBpcHE0MHh4IHRhcmdldCwgb3IgdGhlICJCZWFn
bGVCb25lIiBmcm9tIHRoZSBvbWFwIHRhcmdldC4KVGhleSBhcmUgYSBtaXggb2YgZGV2ZWxvcG1l
bnQgYm9hcmRzLCByZWZlcmVuY2UgZGVzaWducywgYW5kIGVtYmVkZGVkCmJvYXJkcywgYnV0IG5v
bmUgb2YgdGhhdCBpbmZvcm1hdGlvbiBpcyBvbiB0aGVpciB0aXRsZS4KQWRkaXRpb25hbGx5LCBv
bmx5IDQgT3BlbldSVCAiZGV2aWNlcyIgaGF2ZSB0aGUgd29yZCAiZGV2ZWxvcG1lbnQiIG9uCnRo
ZWlyIHRpdGxlLCBhbmQgYXJvdW5kIDIwIHRoZSB3b3JkICJyZWZlcmVuY2UiLgoKSGF2aW5nIHNh
aWQgdGhhdCwgSSByZWFsbHkgY2FyZSBhYm91dCB0aGUgbWFudWZhY3R1cmVyIGJlaW5nIGFkZGVk
IHRvCnRoZSB0aXRsZSwgYW5kIGZvciBjb25zaXN0ZW5jeSByZWFzb25zLCBJIHByb3Bvc2Ugb25l
IG9mIHRoZXNlCm9wdGlvbnM6CjE6IFJlbW92ZSB0aGUgZGV2ZWxvcG1lbnQgcGFydCAobW9kaWZ5
IDIgYm9hcmRzLCB0aGlzIHBhdGNoKQoyOiBSZW1vdmUgdGhlIGRldmVsb3BtZW50IGJvYXJkIHBh
cnQgKG1vZGlmeSA0IGJvYXJkcywgbmV3IHBhdGNoKQozOiBBZGQgdGhlIGRldmVsb3BtZW50L3Ry
YWluZXIvZXZhbHVhdGlvbiBwYXJ0IChtb2RpZnkgMiBib2FyZHMsIG5ldyBwYXRjaCkKCkknbSBu
b3cgbW9yZSBpbmNsaW5lZCB0byBnbyBmb3Igb3B0aW9uIDIgYW5kIGRyb3AgZXZlcnl0aGluZyB0
aGF0J3MKbm90IHBhcnQgb2YgdGhlIG1hbnVmYWN0dXJlciBhbmQgbW9kZWwsIGFzIHRoZSAiYm9h
cmQiIHBhcnQgaXMgbm90CmFkZGluZyBtZWFuaW5nZnVsIGluZm9ybWF0aW9uIGZyb20gYSBkZXZl
bG9wZXIgcG9pbnQgb2YgdmlldywgSU1ITy4KCkknbGwgd2FpdCBmb3IgeW91ciByZXBseSBiZWZv
cmUgc2VuZGluZyBhIFYyLgoKTGlua3M6CjEuIGh0dHBzOi8vc3RvcmUuZGlnaWxlbnRpbmMuY29t
L3p5Ym8tenlucS03MDAwLWFybS1mcGdhLXNvYy10cmFpbmVyLWJvYXJkCgpUaGFua3MsCkx1aXMg
QXJhbmVkYS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
