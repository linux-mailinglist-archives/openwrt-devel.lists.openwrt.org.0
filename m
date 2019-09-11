Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A59AF8DA
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 11:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AZxh0x0Q0lnb3loFzfbk2Kc5bJIbC9KBri8Abu9YQyE=; b=VJVMIAgvaONum1HgZCANFZhdS6
	B6fga19bOJ6VewfnuJUhwec5mCVHmFgFdXKI51WqWA7oggBKKB5hKigPdxN4ljpqYqaiHeHi/1ccc
	kx93wtw/kPSvEH5WW/PYiETdb20Wpl2833QaRjxyznlIX1zyrNDN4kUboa+1VJ93pVqNrdd5iCmqN
	v7eCuyFZCgjI/tpTlrPfEyJkp22zLN5gMTzxqAgYeO9zhpfpbGtmHjzBIdqDm3ulBwC9By2ZF3B5U
	dcwBBolcqzhSXVQEJUQlfWopRjCHXMg2TAVDkVt7EmvSDyUKhdC0bZiPuBgxIvN0yBOP6yN7ySigx
	9reJmMtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ytZ-0003sO-52; Wed, 11 Sep 2019 09:26:37 +0000
Received: from mail-yw1-xc34.google.com ([2607:f8b0:4864:20::c34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ytO-0003rW-Kb
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 09:26:27 +0000
Received: by mail-yw1-xc34.google.com with SMTP id r134so1912642ywg.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Sep 2019 02:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=HdOkqQXhrsNX4mF2vNBw0/N1r53C2iOvZHauCOlWJx8=;
 b=lpYFVcJiZwDsdb5ygFtZ9LMlziSxV3PPTLoDIhegq+PDEbhyHTUIK5GEC+tUs1G0eT
 Re1h1kDXiaHhiXOuRrCzR1Oz/DiZyFPS8bguLHTQLcjqKRKQvyid56rsk81WPTOmyqwT
 EagePQiitlPBFlL7t1B+JDn9rFOAMjy+bl4j/XyLqbi1MoDa/N0f2xqgRiEu9QSlFHHb
 yBthiKW3+WaBctM6Lj4Ur9Y5k9sbElTwL+F6acrCdP+dtCg0GV5jAS+inqTAaukRcSNH
 1VAWnNcWr/wbXvpdozjIV1oQrG3F09YfCnBRE68StCAcv1hz0GSmo6KtB5t+ZJQgr++u
 tZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=HdOkqQXhrsNX4mF2vNBw0/N1r53C2iOvZHauCOlWJx8=;
 b=q/ZNj5SYtiAQnCcfGdxqetPSPoMbHFjajgwZWiCz2Y+fxe4jNjvvWKRIvKWOgHUf4H
 5c2Ie9fb1Y7caoetLp4krl1subEibVpHq+7MxfF8Cs+tprLNkDMJTCHgOMyXeAjGxO54
 ECTR+YrQIltsKeSvFn3Ke/WnOAtCtlKZc3s6S1GkAjKTan2/ZoFdjOBEcjfqsFXr5qWb
 YHIdFWYjxUUBKlTmkBDSt1BoRASzfplWRlTqYNbqUF22k77STUvKHyzBmbmBWGmZh30y
 TcpP3y7OgIxum7Ksj0/807n587ExIdstV9k2WolcWjySE4xeN2SpzDQlUtj7KIcrWqwD
 jRtA==
X-Gm-Message-State: APjAAAWS/C+JPDFNF7T8eTjffPUDWuiQEbkg4KD3fE0FIziUQfhEf4XC
 303Rz+ySx5fOLzZosSE+rx0uBz5705+iu0qA40WMhQ==
X-Google-Smtp-Source: APXvYqyhY+ElG72jmeAAWEED54+OXPHFHt2Ir/ItQNQYob9qw3/HVHp1Z/dEwFEBFYAAtrXChbaeBn+o4i9pMGT+hMU=
X-Received: by 2002:a81:794a:: with SMTP id u71mr25339537ywc.211.1568193985197; 
 Wed, 11 Sep 2019 02:26:25 -0700 (PDT)
MIME-Version: 1.0
References: <CACna6ryNB2PN2qwyctK7aTVnvhB+F6zTjGUMs=6vZ4XDeAyF6A@mail.gmail.com>
In-Reply-To: <CACna6ryNB2PN2qwyctK7aTVnvhB+F6zTjGUMs=6vZ4XDeAyF6A@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 11 Sep 2019 11:26:14 +0200
Message-ID: <CACna6rzL6guvd-MGOUqXRP_nCeFxmOwjqxtcNoGhV0vNC701Wg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_022626_702327_5B4FDF43 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c34 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] sysupgrade: extending firmware validation
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCAxOSBKdW4gMjAxOSBhdCAxNjowNywgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPiBDdXJyZW50bHkgdGFyZ2V0cyBjYW4gaW1wbGVtZW50IHBsYXRmb3Jt
X2NoZWNrX2ltYWdlKCkgdGhhdCB2ZXJpZmllcwo+IHN1Ym1pdHRlZCBmaXJtd2FyZSBmaWxlLiBJ
dCBtYXkgcmV0dXJuIGEgc3VjY2VzcyBvciBmYWlsdXJlLgo+Cj4gSSdtIGxvb2tpbmcgZm9yIG1v
cmUgY29tcGxleCBpbXBsZW1lbnRhdGlvbi9zb2x1dGlvbi4gSSdkIGxpa2UKPiBmaXJtd2FyZSB2
YWxpZGF0aW9uIHRvIHByb3ZpZGUgbW9yZSBpbmZvIGxpa2U6Cj4gMSkgSXMgZmlybXdhcmUgdmFs
aWQKPiAyKSBXaGF0IG1ha2VzIGZpcm13YXJlIGludmFsaWQgaWYgYW55dGhpbmcKPiAzKSBJcyB0
aGF0IHBvc3NpYmxlIHRvIGZvcmNlIGZpcm13YXJlIGluc3RhbGxhdGlvbgo+Cj4gSGF2aW5nIHN1
Y2ggaW5mbyBhdmFpbGFibGUgd291bGQgbWFrZSB1c2VyIGZlZWRiYWNrIG11Y2ggbW9yZQo+IGZy
aWVuZGx5LiBJJ2QgbGlrZSBsdWNpIHRvIHVzZSB0aGF0IG5ldyBpbmZvICYgZGlzcGxheSBhIHBy
b3Blcgo+IGVycm9yL3dhcm5pbmcgdG8gYSB1c2VyIGlmIG5lZWRlZC4KPgo+IFNvbWUgcG9zc2li
bGUgdmFsaWRhdGlvbiBmYWlsdXJlczoKPiAxKSBGaXJtd2FyZSBub3QgbWF0Y2hpbmcgZGV2aWNl
IG1vZGVsCj4gMikgRmlsZSB0b28gYmlnIHRvIGdldCBmbGFzaGVkCj4gMykgQ2hlY2tzdW0gaW52
YWxpZCAoY29ycnVwdGVkIGZpbGUpCj4gNCkgU2lnbmF0dXJlIG1pc3NpbmcgKGNhbiBiZSBkYW5n
ZXJvdXMgdG8gZmxhc2ggaXQpCj4KPiBsdWNpIGNvdWxkIGRpc3BsYXkgd2FybmluZ3MgYW5kIHRo
ZW4gb2ZmZXIgYW4gb3B0aW9uIHRvIGZsYXNoIGEKPiBmaXJtd2FyZSBhbnl3YXkuIE9yIGRpc3Bs
YXkgYSBjcml0aWNhbCBlcnJvciBhbmQgZG9uJ3Qgb2ZmZXIgc3VjaAo+IG9wdGlvbiBhdCBhbGwu
IEluIGFueSBjYXNlIHRoYXQgc2hvdWxkIGJlIG11Y2ggbW9yZSBtZWFuaW5nZnVsIHRoYW4gYQo+
IHNpbmdsZSBlcnJvciBtZXNzYWdlLgo+Cj4gSSBhbHNvIHRob3VnaHQgd2UgbWF5IHdhbnQgdG8g
c3RhcnQgc2lnbmluZyBPcGVuV3J0IGZpcm13YXJlcyBvbmUgZGF5Lgo+Cj4gTXkgcXVlc3Rpb24g
aXM6IHdoYXQgZG8geW91IGZpbmQgdGhlIGJlc3Qgd2F5IG9mIGltcGxlbWVudGluZyBpdD8KPgo+
IEEgc2ltcGxlIHJldHVybiBjb2RlIG9mIGJhc2ggc2NyaXB0IHdvbid0IGJlIHN1ZmZpY2llbnQg
KHRvbyBtYW55IGRhdGEKPiB0byBwYXNzLCBldmVuIGlmIHdlIGRlY2lkZSB0byB1c2Ugc29tZSBi
aXQgZmxhZ3MpLiBJIHdhcyB0aGlua2luZwo+IGFib3V0IHByb3ZpZGluZyB2YWxpZGF0aW9uIHJl
c3VsdCB1c2luZyBKU09OLiBTaG91bGQgdGhhdCBiZSBzb21lCj4gc3RhbmRhbG9uZSBhcHAgb3Ig
YSB1YnVzIGRlYW1vbj8gSG93IGNvdWxkIHdlIGhhbmRsZSB0YXJnZXQtc3BlY2lmaWMKPiB2YWxp
ZGF0aW9uIHN0ZXBzPwoKT3ZlciB0aGUgbGFzdCBmZXcgd2Vla3MgSSd2ZSBpbXBsZW1lbnRlZCBt
YW55IHN5c3VwZ3JhZGUgaW1wcm92ZW1lbnRzLgpUaGVyZSBhcmUgMiBwYXRjaGVzIHVuZGVyIHJl
dmlldyByaWdodCBub3cuCgpXaGF0IEkgc3RpbGwgd2FudCB0byBpbXBsZW1lbnQ6CjEpIFVzYWJs
ZSAidWJ1cyBjYWxsIHN5c3RlbSBzeXN1cGdyYWRlIiB3aXRob3V0IC9zYmluL3N5c3VwZ3JhZGUK
MikgTHVDSSB1c2luZyBuZXcgdmFsaWRhdGlvbiBpbmZvCgpUaGUgbGF0ZXIgbWF5IHRha2UgbWUg
cXVpdGUgc29tZSB0aW1lIGFzIEkgaGF2ZSBjbG9zZSB0byB6ZXJvIEx1Q0kgZXhwZXJpZW5jZS4K
CkRvZXMgYW55b25lIGhhdmUgYW55IG90aGVyIHN1Z2dlc3Rpb25zIGZvciBleHRyYSBpbXByb3Zl
bWVudHM/CgotLQpSYWZhxYIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
