Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A788F103B6C
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 14:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDXmAZ3Fk2zFisjuh+kIn92+8fxet4IPcFXi6YKq5aQ=; b=GLcamJzZrHk2TB
	u2NiQIpuX6VqMD+hmckpxtwJMxr2sBotZ+rg+wCADnjEb8JIdED2FI9IrWdqcG079+BjP3XI3DuGg
	T78O5BzI/lL5M2uBfSjX90dwt6lctK564KlI3xwbDsN2U157/oJsbidivTRSTFiNMYaAh9NFb+1CR
	HleHPJkKmy+ruDC7bIdHEZvAT+P48Zvp4duSNYs3Lex8RTMoRWKGHMvgTqWvy+9AlZA7UGcD59rsd
	EwI0A50b6ysKWF4n12o/NahgYajy+i1jR9zXa0ChEnO4G6EojpyvO4jNdEXcMxuQGdj+/2JMC3Zhf
	wBElhiHRWm9ggfo+dtUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQ3s-0006yo-9M; Wed, 20 Nov 2019 13:30:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQ3j-0006wL-MJ
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 13:30:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id t26so1199524wmi.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 Nov 2019 05:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CoWWUBgMpPYRL0Ndam/zDVzFijsJpX2tznUUQz53kn4=;
 b=tG+wDZQb5IKcM2Lsyvy94ylZvhFvujRE23nwD4lIhWfL4nra2drZZwX1yVU2KVuvdf
 aL2jAeuyKgVT2cZKwgsadovHl+du4p0iMqCKLdxMa1mVMITTo5M1QHlvA2Or7LOnqQt4
 ytr080qO/iKPSl9P2kTCrHYP2nRDaQL3y5COMoDlOjwID/r6+RHxtPY1N1T6RIkvihM6
 qY+mLZG1+7QhcsYxU27qbDHY8/lvYvbwfT9QJVjxDXqa6QRcPLGjJCAzuUMz2w4MIjU/
 Ec0kcPYJWWxlqcYx8PhZz1mdVPXMzdVJtLDj/Cy/FYaNrx+4gombyG8irkWl3eaFVzpu
 VYcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CoWWUBgMpPYRL0Ndam/zDVzFijsJpX2tznUUQz53kn4=;
 b=otP5Yvi71UbhN7wk1WU2nTmejRsNWlmBMYV+MK+6XxTAwvJj8TlksKMlVJNQwv6r2f
 +acyhIgwF0dnC9quAZJZT9pLuUkTMG1hIxw1NwSp4E3JkbTNFPRQdJBdI+gwdorGrnC9
 2ZEz3l4i1SjBciYbdPDR+pamiVKkT9TV9Jxx74NFqD3irifS13rnsA5VI0QqNRDRBsJn
 eql9JLzDOSaYY1tmoyOpPTULkVCUuynGcH74VqZXV9p/DOa8C5CzxY+QiESK9FkGjojh
 01VZppFX8xlgQA73cuzs4ui/3A03KVa0rkBNz+TOT780Wj4XTb37ICJkWf8fw4WSeeSM
 hLtw==
X-Gm-Message-State: APjAAAVD6CQ6/IANw91T2RQLq4aEPy1DGQ7zUXstcrEM2E5S4A/dHSr3
 EiEnKnPNH/6rXIyqr6uf38AYi/dsIqLLnQ5X9jI=
X-Google-Smtp-Source: APXvYqz+kOsLzqsfCWMrOy9hSEd47Z0MOHJBqx9zXkpG528xCY96X6p/6a46+4KhL744cXTzLXlk0tTrOPFiPNXq+xs=
X-Received: by 2002:a1c:411:: with SMTP id 17mr3078554wme.122.1574256609870;
 Wed, 20 Nov 2019 05:30:09 -0800 (PST)
MIME-Version: 1.0
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-2-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-2-ynezz@true.cz>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 20 Nov 2019 14:29:50 +0100
Message-ID: <CAOiHx=kfTEjmFwozqhb_aFcRTSxXj7ynkoVzT=gDH-QZi035JQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_053015_729739_B62172DB 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH libubox 1/9] enable extra compiler checks
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

T24gV2VkLCAyMCBOb3YgMjAxOSBhdCAxMzowMCwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBMZXQncyBlbmZvcmNlIGFkZGl0aW9uYWwgYXV0b21hdGljIGNoZWNrcyBl
bmZvcmNlZCBieSB0aGUgY29tcGlsZXIgaW4KPiBvcmRlciB0byBjYXRjaCBwb3NzaWJsZSBlcnJv
cnMgZHVyaW5nIGNvbXBpbGF0aW9uLgoKRG9lcyBpdCBzdGlsbCBjb21waWxlIHdoZW4gb25seSBh
cHBseWluZyB0aGlzIHBhdGNoPyBJZiBub3QsIHlvdSBuZWVkCnRvIG1vdmUgaXQgdG8gYWZ0ZXIg
Zml4aW5nIGFsbCBpc3N1ZXMgaXQgbm93IHdhcm5zIGFib3V0IChhbmQgSSBndWVzcwplcnJvcnMp
LCB0byBrZWVwIGJpc2VjdGFiaWxpdHkuCgpSZWdhcmRzCkpvbmFzCgo+Cj4gU2lnbmVkLW9mZi1i
eTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiAtLS0KPiAgQ01ha2VMaXN0cy50eHQg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
Cj4gZGlmZiAtLWdpdCBhL0NNYWtlTGlzdHMudHh0IGIvQ01ha2VMaXN0cy50eHQKPiBpbmRleCA1
NzgwNGNmMDA3YmYuLjdhODY4NTQ4NDFlMyAxMDA2NDQKPiAtLS0gYS9DTWFrZUxpc3RzLnR4dAo+
ICsrKyBiL0NNYWtlTGlzdHMudHh0Cj4gQEAgLTMsNyArMyw3IEBAIElOQ0xVREUoQ2hlY2tMaWJy
YXJ5RXhpc3RzKQo+ICBJTkNMVURFKENoZWNrRnVuY3Rpb25FeGlzdHMpCj4KPiAgUFJPSkVDVCh1
Ym94IEMpCj4gLUFERF9ERUZJTklUSU9OUygtT3MgLVdhbGwgLVdlcnJvciAtLXN0ZD1nbnU5OSAt
ZzMgLVdtaXNzaW5nLWRlY2xhcmF0aW9ucykKPiArQUREX0RFRklOSVRJT05TKC1PcyAtV2V4dHJh
IC1XYWxsIC1XZXJyb3IgLS1zdGQ9Z251OTkgLWczIC1XbWlzc2luZy1kZWNsYXJhdGlvbnMgLVdu
by11bnVzZWQtcGFyYW1ldGVyKQo+Cj4gIE9QVElPTihCVUlMRF9MVUEgImJ1aWxkIEx1YSBwbHVn
aW4iIE9OKQo+ICBPUFRJT04oQlVJTERfRVhBTVBMRVMgImJ1aWxkIGV4YW1wbGVzIiBPTikKPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4g
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
