Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8973A1B93FE
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 22:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1+DVcv3nPvscaTsdhZVCJGMmNHYmtvgFS25CvVwjcng=; b=D3OdwWGS1uOG0io8zAtNEQlX/E
	ANwGx1zOmLJyMMwh8ccsUbEEzmePe3xmBuszgtqTiKenHOjH/8YPWBYIOPirUtF9DSvK2Q9QRfcOp
	71zkyN50CqKRkjyy5oGAlgqY1YqQLJQYQnx7K0riThyVu/QuUhqIFsleI44HxPFPIxYiWXMs1OEWs
	bnk0cyrrEZv7rWQIp2FMsZ/970b7VcbW7tF+TOeSfBdixTDlQAmVq47I3b0V6TelcHNr6cKM1u/8w
	3z8CXnxbrNB8r2IigX5K34xQTYzJbsWQJxKPtZ0PkZ1FYwmtme4g4OCyw4ydP/QJdTR3XRJmg8zIt
	zOA3n7Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSo8K-0002Gu-Mo; Sun, 26 Apr 2020 20:44:12 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSo8C-0002G2-RJ
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 20:44:06 +0000
Received: by mail-il1-x142.google.com with SMTP id w6so14833988ilg.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 13:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=yTkTQhDOVoLo4m1JDMCA/TTM51wJOcWmBllKIg9Y7bo=;
 b=jVafFAKS3F+wGYnfsNz9BOvb3TLWCeod5UsSrjctBC9tGDoy52PqNepzD8XcS/63vL
 ux9wA3dM8+plCdwZYmLr9XVmV87jIdDuwuEu9HZCE9cnkVSNyW1mN7WRtQtgrS3SXgev
 Vihk5XA+m8CNESZS6NuqiGc0aQkg0S+bipNeHjeI5La6+leFsSHTSo0T7SrsnlSTNKe7
 3oAUxFCeTZsU/f5Crrh7calh4HcEsuQdvj5ka65OBjNotYCp8f3PGYaP8btkfCfg5hIj
 UmU1S+3BOJJIDqJ4syBOd7MJ3Sj3SeRfEXtw2G0Ei1tlS73YrM5lGYWETUPqu29XRzhm
 6oqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=yTkTQhDOVoLo4m1JDMCA/TTM51wJOcWmBllKIg9Y7bo=;
 b=ZflvHHTrWM71joum45qiYJ1EbRD2v4QVfkCe1DRvs2FM6dfvBpifdKLeWYHteBwwLg
 91j5pXI/MuYfjXYP6HdBx1MufOD1Mi5rDEH2crBqHL1SbTx5DGG3qfctzuBxyyfVOjB9
 CpNuPTPVRKs8eCyPMZOsw+XhLEoXKFxaehOJDtFR2MwXXRi/punq9dVt6z7c2yM+zzwS
 v2DCfK2HLMiUJMNRigJaZE9GlhSaouBUTH+aGv7HIiMAAWUNkPw2Gpku5jUCXQV75zlQ
 H0S50UzLUpCLR8NWa1qCHDOAXm+iGJ8S0pCTzlVPbhef/b/SGYSu7EwMlg1Wdob80dYC
 MjIg==
X-Gm-Message-State: AGi0PuYnoQnUWOWR9R9p7jMbYsYiUKEgp7jTQGgAF61enyx14ayIQ7ey
 Ityp/lgwrDtUHidycoOhU2PhqoZmbJVu8DyR7YxyMoExVNM=
X-Google-Smtp-Source: APiQypJu+/9hh43zC6U2YNJjNO7LscD+V/g5OUd+e/ks2uZlj5CmQTDTAjJX2omy19HGClQeZ8oN6KRmajaD0zikH5I=
X-Received: by 2002:a92:985d:: with SMTP id l90mr18828256ili.108.1587933843279; 
 Sun, 26 Apr 2020 13:44:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAOdf3gpDVBzWe=2qHz12XhtbsmXrJNpd_nW9k9Gix1mHtzNe0g@mail.gmail.com>
 <CAOdf3goy86hUfcwaTr+1AnqyfY+GYRnH7wBRU2+D-bd8dLUQXg@mail.gmail.com>
In-Reply-To: <CAOdf3goy86hUfcwaTr+1AnqyfY+GYRnH7wBRU2+D-bd8dLUQXg@mail.gmail.com>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sun, 26 Apr 2020 16:43:52 -0400
Message-ID: <CAOdf3go-UKX7CZwp7Bt4ME_j=sFjVD2Wy380zaOMdsavNcKP+A@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_134404_911308_2B111980 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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

TGUgZGltLiAyNiBhdnIuIDIwMjAgw6AgMTA6NTcsIEV0aWVubmUgQ2hhbXBldGllcgo8Y2hhbXBl
dGllci5ldGllbm5lQGdtYWlsLmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGkgQWxsLAo+Cj4gTGUgc2Ft
LiAxMSBhdnIuIDIwMjAgw6AgMTI6NDgsIEV0aWVubmUgQ2hhbXBldGllcgo+IDxjaGFtcGV0aWVy
LmV0aWVubmVAZ21haWwuY29tPiBhIMOpY3JpdCA6Cj4gPgo+ID4gSGVsbG8gT3BlbldydCBoYWNr
ZXJzLAo+ID4KPiA+IEknbSBwbGF5aW5nIGFyb3VuZCB3aXRoIE9wZW5XcnQgbWFzdGVyIG9uIGEg
TWlrcm9UaWsgUkI3NTBHcjMgYW5kCj4gPiB3b3VsZCBsaWtlIHRvIGRvIGhhcmR3YXJlIGFjY2Vs
ZXJhdGVkIHN0YXRlZnVsbCBicmlkZ2UgZmlyZXdhbGxpbmcuIE15Cj4gPiBlbmQgZ29hbCBpcyB0
byBsZWFybiBhbmQgbWFrZSBQaGFuVGFwCj4gPiAoaHR0cHM6Ly9naXRodWIuY29tL25jY2dyb3Vw
L3BoYW50YXApIHdvcmsgYXQgbGluZSByYXRlLgo+ID4KPiA+IE1UNzYyMSBzdXBwb3J0cyBmbG93
IG9mZmxvYWQsIHNvIHRoZSBoaWdoIGxldmVsIGlkZWEgd291bGQgYmUgdG86Cj4gPiAtIGNyZWF0
ZSBhIGxpbnV4IGJyaWRnZSB3aXRoIDIgcG9ydHMgKHNheSBsYW40L2xhbjUpCj4gPiAtIGRpc2Fi
bGUgbm9ybWFsIHN3aXRjaCBvZmZsb2FkIChkbyBub3QgZm9yd2FyZCBqdXN0IGJhc2VkIG9uIG1h
Ywo+ID4gZGVzdCkgYW5kIGhhdmUgdGhlIHBhY2tldHMgZ28gdGhyb3VnaCBuZXRmaWx0ZXIKPgo+
IEJpZyB0aGFua3MgdG8gUWluZ2ZhbmcgZm9yIHRoZSB0aXAsIGZvciB0aGlzIHBhcnQgSSBqdXN0
IGRpc2FibGVkIE1BQyBsZWFuaW5nCj4KPiAtLS0gYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMK
PiArKysgYi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMKPiBAQCAtMTMxOSw2ICsxMzE5LDkgQEAg
bXQ3NTMwX3NldHVwKHN0cnVjdCBkc2Ffc3dpdGNoICpkcykKPiAgICAgICAgICAvKiBFbmFibGUg
Y29uc2lzdGVudCBlZ3Jlc3MgdGFnICovCj4gICAgICAgICAgbXQ3NTMwX3Jtdyhwcml2LCBNVDc1
MzBfUFZDX1AoaSksIFBWQ19FR19UQUdfTUFTSywKPiAgICAgICAgICAgICAgICAgUFZDX0VHX1RB
RyhNVDc1MzBfVkxBTl9FR19DT05TSVNURU5UKSk7Cj4gKwo+ICsgICAgICAgIC8qIGhhY2sgKi8K
PiArICAgICAgICBtdDc1MzBfc2V0KHByaXYsIE1UNzUzMF9QU0NfUChpKSwgU0FfRElTKTsKPiAg
ICAgIH0KPgo+ICAgICAgLyogU2V0dXAgcG9ydCA1ICovCj4KPiA+IC0gaGF2ZSBuZXRmaWx0ZXIg
Y3JlYXRlL2luc3RhbGwgZmxvdyBvZmZsb2FkIHJ1bGVzIGZvciBtb3N0Cj4gPiBjb25uZWN0aW9u
cyBsaWtlIHdlIGRvIGZvciB0aGUgcm91dGluZyBjYXNlLgoKSnVzdCB0cnlpbmcgdG8gaGF2ZSBz
b2Z0d2FyZSBmbG93IG9mZmxvYWRpbmcgZm9yIGJyaWRnZSB3b3JraW5nIG9uClJCNzUwR3IzIChM
aW51eCA1LjQpCnN5c2N0bCAtdyBuZXQuYnJpZGdlLmJyaWRnZS1uZi1jYWxsLWlwdGFibGVzPTEK
CkluIGlwdGFibGVzIEkgc2VlIHRoZSBGTE9XT0ZGTE9BRCBydWxlCiMgaXB0YWJsZXMtc2F2ZQou
Li4KLUEgRk9SV0FSRCAtbSBjb21tZW50IC0tY29tbWVudCAiIWZ3MzogQ3VzdG9tIGZvcndhcmRp
bmcgcnVsZSBjaGFpbiIKLWogZm9yd2FyZGluZ19ydWxlCi1BIEZPUldBUkQgLW0gY29tbWVudCAt
LWNvbW1lbnQgIiFmdzM6IFRyYWZmaWMgb2ZmbG9hZGluZyIgLW0KY29ubnRyYWNrIC0tY3RzdGF0
ZSBSRUxBVEVELEVTVEFCTElTSEVEIC1qIEZMT1dPRkZMT0FECi4uLgoKSW4gY29ubnRyYWNrIEkg
c2VlIFtPRkZMT0FEXSBjb25uZWN0aW9ucwojIGNhdCAvcHJvYy9uZXQvbmZfY29ubnRyYWNrCmlw
djQgICAgIDIgdGNwICAgICAgNiBzcmM9MTkyLjE2OC4xLjIgZHN0PTE5Mi4xNjguMS4xNSBzcG9y
dD01NjAxOApkcG9ydD0yMiBwYWNrZXRzPTI5ODU4IGJ5dGVzPTE2MDk2Mjkgc3JjPTE5Mi4xNjgu
MS4xNSBkc3Q9MTkyLjE2OC4xLjIKc3BvcnQ9MjIgZHBvcnQ9NTYwMTggcGFja2V0cz01NzE1NSBi
eXRlcz0yMDYzNjQyMiBbT0ZGTE9BRF0gbWFyaz0wCnpvbmU9MCB1c2U9MwoKQnV0IGlmIEkgYWRk
IGFuIGlwdGFibGVzIExPRyBydWxlCiMgaXB0YWJsZXMgLUEgZm9yd2FyZGluZ19ydWxlIC1qIExP
RyAtLWxvZy1wcmVmaXggImlwdCBmb3J3YXJkOiAiIC0tbG9nLWxldmVsIDQKCiMgbG9ncmVhZCAt
ZgouLi4KU3VuIEFwciAyNiAxNzo1NjozMyAyMDIwIGtlcm4ud2FybiBrZXJuZWw6IFsgODc5OC40
MzA0NjZdIGlwdCBmb3J3YXJkOgpJTj1ici1sYW4gT1VUPWJyLWxhbiBQSFlTSU49bGFuNSBQSFlT
T1VUPWxhbjIKTUFDPTUwOjdiOjlkOmYwOjA2OjRlOmU0Ojk1OjZlOjQ3OjY2OjRjOjA4OjAwIFNS
Qz0xOTIuMTY4LjEuMTUKRFNUPTE5Mi4xNjguMS4yIExFTj0xNDggVE9TPTB4MTAgUFJFQz0weDAw
IFRUTD02NCBJRD01NzAzMSBERgpQUk9UTz1UQ1AgU1BUPTIyIERQVD01NjAxOCBXSU5ET1c9MjY4
NyBSRVM9MHgwMCBBQ0sgUFNIIFVSR1A9MApTdW4gQXByIDI2IDE3OjU2OjMzIDIwMjAga2Vybi53
YXJuIGtlcm5lbDogWyA4Nzk4LjQ1NDA1NV0gaXB0IGZvcndhcmQ6CklOPWJyLWxhbiBPVVQ9YnIt
bGFuIFBIWVNJTj1sYW4yIFBIWVNPVVQ9bGFuNQpNQUM9ZTQ6OTU6NmU6NDc6NjY6NGM6NTA6N2I6
OWQ6ZjA6MDY6NGU6MDg6MDAgU1JDPTE5Mi4xNjguMS4yCkRTVD0xOTIuMTY4LjEuMTUgTEVOPTUy
IFRPUz0weDA4IFBSRUM9MHg0MCBUVEw9NjQgSUQ9NDAxMzkgREYKUFJPVE89VENQIFNQVD01NjAx
OCBEUFQ9MjIgV0lORE9XPTEzMTYgUkVTPTB4MDAgQUNLIFVSR1A9MAouLi4KClNhbWUgdGVzdCB3
aXRoIDIgc2VwYXJhdGUgaW50ZXJmYWNlcyAoR0wtQVIxNTAgLyBMaW51eCA0LjE5KToKIyBsb2dy
ZWFkIC1mClNhdCBBcHIgMjUgMjI6MDQ6NDAgMjAyMCBrZXJuLndhcm4ga2VybmVsOiBbICA5Njgu
NjcxNzc3XSBpcHQgZm9yd2FyZDoKSU49YnItbGFuIE9VVD1ici1sYW4gUEhZU0lOPWV0aDEgUEhZ
U09VVD1ldGgwCk1BQz01MDo3Yjo5ZDpmMDowNjo0ZTplNDo5NTo2ZTo0Nzo2Njo0YzowODowMCBT
UkM9MTkyLjE2OC4xLjE1CkRTVD0xOTIuMTY4LjEuMiBMRU49MTE2IFRPUz0weDEwIFBSRUM9MHgw
MCBUVEw9NjQgSUQ9NDg3NDEgREYKUFJPVE89VENQIFNQVD0yMiBEUFQ9NTgwOTQgV0lORE9XPTIx
NjUgUkVTPTB4MDAgQUNLIFBTSCBVUkdQPTAKU2F0IEFwciAyNSAyMjowNDo0MCAyMDIwIGtlcm4u
d2FybiBrZXJuZWw6IFsgIDk2OC42OTgwODhdIGlwdCBmb3J3YXJkOgpJTj1ici1sYW4gT1VUPWJy
LWxhbiBQSFlTSU49ZXRoMCBQSFlTT1VUPWV0aDEKTUFDPWU0Ojk1OjZlOjQ3OjY2OjRjOjUwOjdi
OjlkOmYwOjA2OjRlOjA4OjAwIFNSQz0xOTIuMTY4LjEuMgpEU1Q9MTkyLjE2OC4xLjE1IExFTj01
MiBUT1M9MHgwOCBQUkVDPTB4NDAgVFRMPTY0IElEPTMxNTAyIERGClBST1RPPVRDUCBTUFQ9NTgw
OTQgRFBUPTIyIFdJTkRPVz04MyBSRVM9MHgwMCBBQ0sgVVJHUD0wCiMgZ3JlcCAxOTIuMTY4LjEu
MTUgL3Byb2MvbmV0L25mX2Nvbm50cmFjawppcHY0ICAgICAyIHRjcCAgICAgIDYgc3JjPTE5Mi4x
NjguMS4yIGRzdD0xOTIuMTY4LjEuMTUgc3BvcnQ9NTgwOTQKZHBvcnQ9MjIgcGFja2V0cz00NjEg
Ynl0ZXM9NDA0NDkgc3JjPTE5Mi4xNjguMS4xNSBkc3Q9MTkyLjE2OC4xLjIKc3BvcnQ9MjIgZHBv
cnQ9NTgwOTQgcGFja2V0cz0yNTIgYnl0ZXM9MzUwMzQgW09GRkxPQURdIG1hcms9MCB6b25lPTAK
dXNlPTMKClNvIHNvZnR3YXJlIGZsb3cgb2ZmbG9hZCBzZWVtcyBicm9rZW4gd2l0aCBicmlkZ2Ug
OigKKEknbGwgZG8gc29tZSBtb3JlIHRlc3RzIHdpdGggY2xhc3NpYyBkaXN0cm9zIGFuZCBsYXRl
c3QgTGludXggdmVyc2lvbikKCgoKPiA+IC0gZW5qb3kKPiA+Cj4gPiBNeSBxdWVzdGlvbnMgYXJl
Ogo+ID4gLSB3aWxsIHRoZSBoYXJkd2FyZSBsZXQgbWUgZG8gdGhhdCAoYW55IHJlc3RyaWN0aW9u
cyBvbiB0aGUgZmxvdwo+ID4gb2ZmbG9hZCBydWxlcyBvciAuLi4pID8KPiA+IC0gaXMgaXQgYWxy
ZWFkeSBwb3NzaWJsZSB3aXRoIE9wZW5XcnQgbWFzdGVyIChJIHdhcyBub3QgYWJsZSB0byBoYXZl
IGEKPiA+IGJyaWRnZSB3aXRob3V0IG9mZmxvYWQgeWV0KSA/Cj4gPiAtIGFueSBwb2ludGVyIHRv
IG9uZ29pbmcgd29yayBpbiB0aGF0IGFyZWEgKHdoaWxlIHdyaXRpbmcgdGhpcyBlbWFpbCBJCj4g
PiBqdXN0IGZvdW5kIE5GX0NPTk5UUkFDS19CUklER0UpCj4gPgo+ID4gVGhhbmtzCj4gPiBFdGll
bm5lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
