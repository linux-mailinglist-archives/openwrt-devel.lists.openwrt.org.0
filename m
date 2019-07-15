Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A48496823C
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 04:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsl1/EHLo1RDlcqj1Uc3wqrbCrg/mQ9gNUeLNuOPgg4=; b=KP9Qvm/l+V5vGm
	KdoKFlvtD+qOoKWRQC8hdAlLJqDf7hq2HH15089HR99Adao/mi6XCTSeoRT+QdvgrOfx5/T/fh88K
	IQUMOBZZ8RW2w68BXz+DzAm0QUkinCU4FWcZedGJvXKGByEpZfXjzieVCPbVEDiqjV0n99AxQLw42
	Y5v4JAnWgd8SXTcbJntixndY29stT2S5BhAVNtrRiDow7bmWL/lT3Ga7LxmX4XoGXf6YoTqVa7SGh
	zv9T9FvTBNs4hXt4iHDCfYUKiCVJ/d3fiOp8oDce60EkdyDNffOEadBva/tbPRWpbqvrX+r0oKIan
	b2tzx/VWNvJe+5hTEeKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmql1-0004aq-92; Mon, 15 Jul 2019 02:30:27 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmqkt-0004aP-0f
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 02:30:20 +0000
Received: by mail-wm1-x331.google.com with SMTP id p74so13514824wme.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 19:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AInfTIbVwP74D4PhBDLNKHsI1NTQjUW2R3pdwMMWhu8=;
 b=T4aQEPo6aS3X+H6TSHOr/4nDG+i57SchIS8K8LV7x3C0c9zh1niVixuL7RwJ/FS2fO
 nW2AvhrcDOeCTGMaoBZriPqPaxl7rE3C/lJgzbheek60BpHVdV2qdUtEBbKTLUdbiVsv
 aGqZTAZD0BsUGmqO6IXjWHH905+40+QZg8Wkl2TiPan/+QVc4KUmloB60OXfHKnSOwFv
 othtsvj7it1+2kUfjSk0hViV9lssgyUhHbeHOhGyvz1+vVwiVLGGda0XJZtd50eqysHN
 HLz4RhV+R5kEJZaw1SMG6ivbrxzH2Sd1QyzakknfA+OWbq46Fw24hsaJplZ7WpQMHTmT
 8lkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AInfTIbVwP74D4PhBDLNKHsI1NTQjUW2R3pdwMMWhu8=;
 b=ppc8Go+WxwistD5zXr3ZYFz/obX3YmiaT+cFjdeOb970tnYaMUCH4A2xPh92pV4WFH
 P+hMYYlPTPY5JQOXE14guvdlgLybiLK28bQ81RyI9ye+qv4NrtfCK5q+DfosNlh1MhtX
 mpbxbbiOkzyjugmF4Y1D2jTi/gG0ijHm1wsh9jdD3Q7SF3YBAMSMVMjC0JP0nITxr/un
 ZHrovzzCPsHVFy74btkBQCqqj4xrv/fShfZcXh23ctwO/UYGlAgIoMq0UT5mXAS6HJwF
 cQZx2lpNG0a7TYuKLEE9u7vInpJgtnr+q9nAYWECzE6su3bhZ4uLNdUD9zL3Nu87cT6u
 9oiw==
X-Gm-Message-State: APjAAAXjHtAUpcR2rxSTmONN2sVLJQVDbCVUPBoiYc6eBs6rWRqcqtcK
 nkmkMYMyZeJbA1mlVknqA+DdhCPb2Bw3006e9cf4SgOg
X-Google-Smtp-Source: APXvYqydb9s5Hxqgv945UHaGbLl5aPYxffZs1YDh+jKr0agHNl83RivK+B2l/P3+ItvK/5HcupNYpTkMT5c+lCwlksc=
X-Received: by 2002:a7b:cf32:: with SMTP id m18mr21399020wmg.27.1563157816689; 
 Sun, 14 Jul 2019 19:30:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190714024328.17271-1-champetier.etienne@gmail.com>
 <04f97319-0ea0-25b8-1a54-c85c8c7fb4db@david-bauer.net>
In-Reply-To: <04f97319-0ea0-25b8-1a54-c85c8c7fb4db@david-bauer.net>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sun, 14 Jul 2019 19:30:04 -0700
Message-ID: <CAOdf3gqxNEsoSFs-rNt886MR=SzM93fMH_-6HEyF53200t511g@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_193019_084308_1DADE70F 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: enable QCA955x SGMII fixup on
 Mikrotik wAP AC
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

SGkgRGF2aWQsCgpMZSBkaW0uIDE0IGp1aWwuIDIwMTkgw6AgMDQ6MjUsIERhdmlkIEJhdWVyIDxt
YWlsQGRhdmlkLWJhdWVyLm5ldD4gYSDDqWNyaXQgOgo+Cj4gSGkgRXRpZW5uZSwKPgo+IG9uZSBz
bWFsbCByZW1hcms6Cj4KPiBPbiAxNC4wNy4xOSAwNDo0MywgRXRpZW5uZSBDaGFtcGV0aWVyIHdy
b3RlOgo+ID4gICAgICAgYXRoNzlfaW5pdF9tYWMoYXRoNzlfZXRoMV9kYXRhLm1hY19hZGRyLCBh
dGg3OV9tYWNfYmFzZSwgMCk7Cj4gPiAgICAgICBhdGg3OV9ldGgxX2RhdGEubWlpX2J1c19kZXYg
PSAmcmJ3YXBnc2NfcGh5X2RldmljZS5kZXY7Cj4gPiAgICAgICBhdGg3OV9ldGgxX2RhdGEucGh5
X2lmX21vZGUgPSBQSFlfSU5URVJGQUNFX01PREVfU0dNSUk7Cj4gPiAgICAgICBhdGg3OV9ldGgx
X2RhdGEucGh5X21hc2sgPSBCSVQoUkJXQVBHU0NfTURJT19QSFlBRERSKTsKPiA+ICsgICAgIGF0
aDc5X2V0aDFfZGF0YS5lbmFibGVfc2dtaWlfZml4dXAgPSAxOwo+Cj4gVGhpcyBzaG91bGQgYmUg
ZHJvcHBlZCBhcyBpdCdzIG5vdCBuZWNlc3NhcnkgYW55bW9yZS4KCkRpZCBzb21lIG1vcmUgdGVz
dHMgYW5kIGl0J3MgZGVmaW5pdGVseSBuZWVkZWQgKGhlcmUgdGhpcyBpcyBhcjcxeHggJgpMaW51
eCA0LjE0KQpJdCdzIHN0aWxsIHVzZWQgZm9yIG90aGVyIGJvYXJkcywgY291bGQgeW91IGRldGFp
bCB3aHkgaXQncyBub3QgbmVlZGVkCmFueW1vcmUsIHNpbmNlIHdoYXQgdmVyc2lvbiwgcmVmZXJl
bmNlIHNvbWUgY29tbWl0cyA/CgpUaGFua3MKRXRpZW5uZQoKPgo+IEJlc3Qgd2lzaGVzCj4gRGF2
aWQKPgo+ID4gICAgICAgYXRoNzlfZXRoMV9wbGxfZGF0YS5wbGxfMTAwMCA9IDB4MDMwMDAxMDE7
Cj4gPiAgICAgICBhdGg3OV9ldGgxX3BsbF9kYXRhLnBsbF8xMDAgPSAweDgwMDAwMTAxOwo+ID4g
ICAgICAgYXRoNzlfZXRoMV9wbGxfZGF0YS5wbGxfMTAgPSAweDgwMDAxMzEzOwo+ID4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
