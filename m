Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180321B9100
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 16:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CsenMOd/KS5XtP6lQQ8Nio5IRH+KfqVsk7o4MbKYF0M=; b=Jnv0zxVi4M/gwJYm4rXJ3d2HKX
	S7YEkvRBoDp13V19yB7O8u9tiYQgDUcw4NETu7mwQolAiLfkAbdFYlIea4oWlJuEHg6rtX58L6FlU
	u1Dp1MwviAHPtwY/0WOBU+kwAtKVJVjVe6v02loLZZcnqiUXtEbrhtgZPjlezMW+1UbuD2JvuTAPl
	snwIwrmSOEhH4b68AqFXGoD7WLLOIc6Mb0tyJ7DGHx5hGdgfF5UchIlFRn/ojL6FZKurCJKFtygl+
	Dnn5i9qFR9FiuGVMzrB6DGQc9O8FZPqF7RHuuyRHA3DtSgZlyt5DNekmZpYn2hE0CXTtqz8sOX9An
	xKPtN4Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSija-0005Va-Pe; Sun, 26 Apr 2020 14:58:18 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSijQ-0005V4-T6
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 14:58:10 +0000
Received: by mail-io1-xd30.google.com with SMTP id c2so1253231iow.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 07:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Ll9he+195eNofUaXHkCeyyl3S3kACUUpvcAN+lo8PQ0=;
 b=JL5tHe5A3CQX7AnsYQ7CeIF8O1aZq3FHhiq5xo53IIP1Ki9+zGK280dewBLUC/K2N3
 2S8pHFogO62ToBJ3cy0tThGZddcluJ8S82iS1UFZKoQLxht1bGIbh0CCrSt2E2Hmyb6k
 h0ku3gSHxB6Gysxm9jwJDQi2/zx77jREdpMMffWAxhMWRUp04x7aXcZWjJ3I8OHE0ZUs
 3VDEE5oyThn2nhJSJ1AfbpNCGBRxeUfU0EqIbOYY+mWLKM5YDsVqTl/ns1zp1luIRKn0
 gdPIWbQNSdsZAC146QDIZlo2bSL8CpufcR5tO2KKCNxFZtNAbj00n7AO8FanItnfI4OL
 9xPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Ll9he+195eNofUaXHkCeyyl3S3kACUUpvcAN+lo8PQ0=;
 b=mdBLaiGm1mdCGBnYnJEt9wZI5+Ul3RcVsbCNalxmVAaZoTOVKoWRFWZMuiqSzEZpAJ
 4sxKm4PcqHNqXVkGJsCF/fyXbCrTPg5EaOvpNDG1DjOeDQJIa1MjERtnKopMXMnCClXI
 bc+FHmijK5hvfH0BzB8p8twJBEYZCSCYbS83ffll62+kx5f3ctfgGUC6qDq3oHYFp41N
 G91xPMACdIlRfWE3eABkNnoZz7GI40Y8oaI8Ke8iBrsPHEjT1wMSlhtfiKWtfFJLxHIm
 Z+afXrqO1quhQ43xR3CcJNXe7mD3N92Jfz8tnx2Zg/+i8tHJSBXH799LnFOh+6IB5Zp+
 fLSA==
X-Gm-Message-State: AGi0PuaSX3tg2lVBvMWDs4HSsXmSe04T7Z5hhctMDvhFvp7/rg3bjBn2
 ReKjfLL5QMgPyOwx8XhgyjMzUabXYwWjU2iA8FNQw3pT
X-Google-Smtp-Source: APiQypIv/K2i1NAoJO8vO4IEsJJ3e6//gwQFE094mFKyLBzko+L/H1eFFWAa/lxy42Mo4DLOElBSklhNZVi/abcvTXs=
X-Received: by 2002:a6b:ed0d:: with SMTP id n13mr1955910iog.52.1587913087626; 
 Sun, 26 Apr 2020 07:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAOdf3gpDVBzWe=2qHz12XhtbsmXrJNpd_nW9k9Gix1mHtzNe0g@mail.gmail.com>
In-Reply-To: <CAOdf3gpDVBzWe=2qHz12XhtbsmXrJNpd_nW9k9Gix1mHtzNe0g@mail.gmail.com>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sun, 26 Apr 2020 10:57:56 -0400
Message-ID: <CAOdf3goy86hUfcwaTr+1AnqyfY+GYRnH7wBRU2+D-bd8dLUQXg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>, 
 DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_075808_958846_3F320B8D 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d30 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] MT7621 and bridge firewalling
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

SGkgQWxsLAoKTGUgc2FtLiAxMSBhdnIuIDIwMjAgw6AgMTI6NDgsIEV0aWVubmUgQ2hhbXBldGll
cgo8Y2hhbXBldGllci5ldGllbm5lQGdtYWlsLmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGVsbG8gT3Bl
bldydCBoYWNrZXJzLAo+Cj4gSSdtIHBsYXlpbmcgYXJvdW5kIHdpdGggT3BlbldydCBtYXN0ZXIg
b24gYSBNaWtyb1RpayBSQjc1MEdyMyBhbmQKPiB3b3VsZCBsaWtlIHRvIGRvIGhhcmR3YXJlIGFj
Y2VsZXJhdGVkIHN0YXRlZnVsbCBicmlkZ2UgZmlyZXdhbGxpbmcuIE15Cj4gZW5kIGdvYWwgaXMg
dG8gbGVhcm4gYW5kIG1ha2UgUGhhblRhcAo+IChodHRwczovL2dpdGh1Yi5jb20vbmNjZ3JvdXAv
cGhhbnRhcCkgd29yayBhdCBsaW5lIHJhdGUuCj4KPiBNVDc2MjEgc3VwcG9ydHMgZmxvdyBvZmZs
b2FkLCBzbyB0aGUgaGlnaCBsZXZlbCBpZGVhIHdvdWxkIGJlIHRvOgo+IC0gY3JlYXRlIGEgbGlu
dXggYnJpZGdlIHdpdGggMiBwb3J0cyAoc2F5IGxhbjQvbGFuNSkKPiAtIGRpc2FibGUgbm9ybWFs
IHN3aXRjaCBvZmZsb2FkIChkbyBub3QgZm9yd2FyZCBqdXN0IGJhc2VkIG9uIG1hYwo+IGRlc3Qp
IGFuZCBoYXZlIHRoZSBwYWNrZXRzIGdvIHRocm91Z2ggbmV0ZmlsdGVyCgpCaWcgdGhhbmtzIHRv
IFFpbmdmYW5nIGZvciB0aGUgdGlwLCBmb3IgdGhpcyBwYXJ0IEkganVzdCBkaXNhYmxlZCBNQUMg
bGVhbmluZwoKLS0tIGEvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCisrKyBiL2RyaXZlcnMvbmV0
L2RzYS9tdDc1MzAuYwpAQCAtMTMxOSw2ICsxMzE5LDkgQEAgbXQ3NTMwX3NldHVwKHN0cnVjdCBk
c2Ffc3dpdGNoICpkcykKICAgICAgICAgLyogRW5hYmxlIGNvbnNpc3RlbnQgZWdyZXNzIHRhZyAq
LwogICAgICAgICBtdDc1MzBfcm13KHByaXYsIE1UNzUzMF9QVkNfUChpKSwgUFZDX0VHX1RBR19N
QVNLLAogICAgICAgICAgICAgICAgUFZDX0VHX1RBRyhNVDc1MzBfVkxBTl9FR19DT05TSVNURU5U
KSk7CisKKyAgICAgICAgLyogaGFjayAqLworICAgICAgICBtdDc1MzBfc2V0KHByaXYsIE1UNzUz
MF9QU0NfUChpKSwgU0FfRElTKTsKICAgICB9CgogICAgIC8qIFNldHVwIHBvcnQgNSAqLwoKPiAt
IGhhdmUgbmV0ZmlsdGVyIGNyZWF0ZS9pbnN0YWxsIGZsb3cgb2ZmbG9hZCBydWxlcyBmb3IgbW9z
dAo+IGNvbm5lY3Rpb25zIGxpa2Ugd2UgZG8gZm9yIHRoZSByb3V0aW5nIGNhc2UuCj4gLSBlbmpv
eQo+Cj4gTXkgcXVlc3Rpb25zIGFyZToKPiAtIHdpbGwgdGhlIGhhcmR3YXJlIGxldCBtZSBkbyB0
aGF0IChhbnkgcmVzdHJpY3Rpb25zIG9uIHRoZSBmbG93Cj4gb2ZmbG9hZCBydWxlcyBvciAuLi4p
ID8KPiAtIGlzIGl0IGFscmVhZHkgcG9zc2libGUgd2l0aCBPcGVuV3J0IG1hc3RlciAoSSB3YXMg
bm90IGFibGUgdG8gaGF2ZSBhCj4gYnJpZGdlIHdpdGhvdXQgb2ZmbG9hZCB5ZXQpID8KPiAtIGFu
eSBwb2ludGVyIHRvIG9uZ29pbmcgd29yayBpbiB0aGF0IGFyZWEgKHdoaWxlIHdyaXRpbmcgdGhp
cyBlbWFpbCBJCj4ganVzdCBmb3VuZCBORl9DT05OVFJBQ0tfQlJJREdFKQo+Cj4gVGhhbmtzCj4g
RXRpZW5uZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
