Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29D97E391
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 21:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kIwLJtgzJTHPz/wqhlK2Eo+dtzEnI0jF8C8ASDSWPk=; b=KDFQJGC/fNQkEY
	RY8nz+AoARQ9iVb6K4xMEHUcYDrvN6K5fogL0o8buYAflYk9MQy5n4XFo0ej73oaO1X1taGxYXbo8
	9W/fZZyydA1sApFQYkxYvd/2lzbSrntbEriYw+04kbu3Q/AQF++OUIi6G5ZN+73hQ22wILyrC2aNI
	iHhcgAUfRkNAKiDI6NIO7rHJIvxyzwOXrZL+lRnDt/1GeJkA0iV7APgP8Uej22uqSOy6eBslNWDlM
	jLCxDQ6m3GPlpLaHoaXedyyOMye3z/J5DluhN04rP25Ba3cEQjVGPqc/DowLoK89hb6UYem3elMxh
	VBJ8O/2Ezh0BKfFLqzdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htH7V-00037q-MO; Thu, 01 Aug 2019 19:52:13 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htH7P-00037R-4G
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 19:52:08 +0000
Received: by mail-io1-xd2c.google.com with SMTP id e20so14088463iob.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 01 Aug 2019 12:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=M27aZ0xiyJqFk6jHmmxV4vX46orqnsMnE4SuhYzrMPM=;
 b=Z+c/Vm9PLFoXmmkdh6apgGzkx3kcdsI1tAYnCAOCerP4hyjMEJO0B0iCkL6FcfGDWo
 8wb7aIbABNazWM0roi3/BRNdqKLanAjQMjsfuS1HbeAIS413fVUFWHsx4pFvppi1uUnt
 i6C+cf+qi3jAS12u5wb6oWV9wi7icNtc9Sfbq909vkCMygPpeGOfYqkakx4TlfQ+leKf
 Sy+1NcVnw6olTUC48Tmg08nqILYVnL8RPAkjHeQQ/5cCjjYoi6P98D2zQdRUsGdBVjhk
 QSfP7BNAYstmU3PtnXwYMGChVKKKc4h4ekbePVX1LMmeGXkQQcr/oRMvi722CVNiAyYj
 8Neg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=M27aZ0xiyJqFk6jHmmxV4vX46orqnsMnE4SuhYzrMPM=;
 b=I2v0rkay+dc825eBj384zrJ6EcGA37KT5YfDthmJ10ZEzqziU+NkooBZGebY4NoskI
 92gC8r641XG2mAKrMEUfbdB7KZFSSWId3nJDwL1IOqc2DSrcTwzjmdXprctHjR0aOAT9
 /lJfv8/K2PzjqPnXtVvnFpPBjhn2wYMWr1NU240P0w8oFpjtTn7L3A6+yvbimNIUFxOB
 Wa+P2C1w0ujWvDJE+djprHEYo5/POm1ercnUiV+jJpAGsL7L+4tV6JZyI6mXFhKzBC0u
 KpcIzgmKx79QH7brEccJYjCAo2UACPFTNCpSCYQXc6JrXBR3dul3CwU402Swn+h8dAfp
 9uCg==
X-Gm-Message-State: APjAAAWKh02HKDIUAbOTaZW4gAFYVMdZz//i+g+g9J95mwA2Tgh8EMrl
 5Eeusw+2TkeavqlJaHOFI2lC7PtQcr4ePp7EDHc=
X-Google-Smtp-Source: APXvYqyBHqgcHkdqlnOq0WnXL1VA0jAhPxmd8l7a/5jpvm+zY2BeJKYV6Vd1qrM95udyMN2zYpPWXqB891YESAHcmeo=
X-Received: by 2002:a02:16c5:: with SMTP id
 a188mr137542048jaa.86.1564689125711; 
 Thu, 01 Aug 2019 12:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190727022302.12656-1-champetier.etienne@gmail.com>
 <20190801085107.GK74752@meh.true.cz>
 <CAOdf3gp-oR2B6qy-qSnxAFWdLfQ+W-+zxrjixc+EGc=6swepgA@mail.gmail.com>
 <20190801183928.GM74752@meh.true.cz>
In-Reply-To: <20190801183928.GM74752@meh.true.cz>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Thu, 1 Aug 2019 12:51:53 -0700
Message-ID: <CAOdf3grZpCY4acG3Eq2vDUb1qW=RNSTFfZUpnuMU_ZmxKOp-rw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_125207_165408_1F52FE0A 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] [RFC] kernel: disable EAP local hack
 when using group_fwd_mask
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCkxlIGpldS4gMSBhb8O7dCAyMDE5IMOgIDExOjM5LCBQZXRyIMWgdGV0aWFyIDx5
bmV6ekB0cnVlLmN6PiBhIMOpY3JpdCA6Cj4KPiBFdGllbm5lIENoYW1wZXRpZXIgPGNoYW1wZXRp
ZXIuZXRpZW5uZUBnbWFpbC5jb20+IFsyMDE5LTA4LTAxIDA3OjIzOjE4XToKPgo+ID4gSWYgdGhl
IGZpeCB3YXMgdG8gd29ya2Fyb3VuZCBhIGNsaWVudCBidWcgd2UgbWlnaHQgd2FudCB0byBrZWVw
IGl0LAo+Cj4gQWN0dWFsbHkgd2UgZG9uJ3Qga25vdyBpZiBpdCB3YXNudCBmaXhlZCBhbHJlYWR5
IHVwc3RyZWFtIGFzIFJhZmHFgiBzdWdnZXN0ZWQKPiBpbiBoaXMgb2xkIHJlbW92YWwgcGF0Y2gu
Cj4KPiA+IGVsc2UgbWF5YmUgd2UgY291bGQgcmV3b3JrIGl0IGFuZCBhZGQgYSB3YXJuX29uY2Ug
aWYgdGhpcyBoYWNrIHByZXZlbnQKPiA+IGEgRUFQIGZyYW1lIGZyb20gYmVpbmcgZm9yd2FyZGVk
Cj4KPiBUaGlzIHdhcm5fb25jZSB3b3VsZCBoYXZlIHByb2JhYmx5IHNhdmVkIHNvbWUgdGltZSBh
bHJlYWR5Lgo+Cj4gPiAnZGlzYWJsZS1lYXAtbG9jYWwtaGFjaycgdG8gZW5hYmxlL2Rpc2FibGUg
dGhpcyBoYWNrLCB3aGF0IGRvIHlvdQo+ID4gcHJlZmVyID8KPgo+IEkgd291bGQgcHJlZmVyIHRv
IHJlbW92ZSB0aGlzIHBhdGNoIGZvciA0LjE5IGtlcm5lbCB0byBmaW5kIG91dCBpZiBpdCdzIHN0
aWxsCj4gbmVlZGVkLgoKeW91IG1lYW4gYWxsIHZlcnNpb25zIGluIG1hc3RlciAoNC4xOS80LjE0
LzQuOSkgb3IgcmVhbGx5IG9ubHkgNC4xOSA/Cgo+IEFuZCBpZiBpdCdzIG5lZWRlZCwgdGhlbiBp
dCB3b3VsZCBtYWtlIHNlbnNlIHRvIGRpc2N1c3MgdGhpcyB1c2UgY2FzZQo+IHdpdGggdXBzdHJl
YW0gYW5kIG1ha2UgaXQgb2ZmaWNpYWwgZmVhdHVyZS4KCkkgaGF2ZSBhIHNtYWxsIHRvb2wvT3Bl
bldydCBwYWNrYWdlCihodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9wYWNrYWdlcy9ibG9iL21h
c3Rlci9uZXQvcGhhbnRhcC9NYWtlZmlsZSkKdGhhdCBJJ20gcHJlc2VudGluZyBhdCBERUYgQ09O
IGluIGEgd2VlaywgYW5kIHdvdWxkIHJlYWxseSBsb3ZlIHRvCmhhdmUgYSB3YXkgdG8gZGlzYWJs
ZSB0aGlzIGhhY2ssCnNvIEkgZG9uJ3QgaGF2ZSB0byB0ZWxsIHBlb3BsZSB0aGF0IHdhbnQgdG8g
dGVzdCBpdCB0aGF0IHRoZXkgaGF2ZSB0bwpyZWJ1aWxkIE9wZW5XcnQuClNvIEknbSB3aWxsaW5n
IHRvIHdvcmsgb24gYW55IHNtYWxsIHBhdGNoIHRoYXQgd29ya2Fyb3VuZCBteSBpc3N1ZSBhbmQK
c2VlbXMgcmVhc29uYWJsZSB0byBldmVyeW9uZSBpbiBhIHNob3J0IHRpbWUtZnJhbWUgOykKCj4K
PiBMZXQncyB3YWl0IGZvciBGZWxpeCdzIGlucHV0IGFzIHdlbGwuCgpJJ2xsIGFsc28gdHJ5IHRv
IGRpZyBzb21lIG1vcmUgaW4gdGhlIG9sZCByZXBvICYgYnVnIHRyYWNrZXIgdG8gc2VlIGlmCnRo
ZXJlIGlzIG1vcmUgaW5mbyB0aGFuIGluIHRoZSBwYXRjaCAmIGVtYWlsCgpFdGllbm5lCgo+Cj4g
LS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
