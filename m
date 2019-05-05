Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB19B141D8
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 20:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5I8tvoyiSLNWv/YG6zsUEtmjd2VfFk26RoDWw8Kl4o=; b=t6wjfy19wYMqVw
	vIh0m8REt3/vrVBEIRx4NA3wkRyu8iLE1wkdfQ00H5fKn29HLJ5p0ylv0DqvqD6faUuMuhBLHScJ1
	YdwQbFvl4XxoBYvmsCbF+cOdIp8ruGPkd1yv/wEZsGWcPIZso3HWPsyI0kM+fF9qL29D7ZEvgl6ez
	fbB8OLIfPFwoYIbs1DgJiYEulAJhTTv80+ICD/P9XOvr03u2rfneG4y0C4nUeHTo4q4eXg2lkmm0a
	FwLKr1pMuQnUBE+ieMOc4lZMO3wSTA/6W0Kq2RqEHu5Lf18YpPcslm3z46Wier+qJgauzFQtmC2LS
	ey36qTq9YZPCPWyH6KzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNLs3-00076F-Bi; Sun, 05 May 2019 18:28:19 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNLrx-00075t-4m
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 18:28:15 +0000
Received: by mail-oi1-x242.google.com with SMTP id v10so8042086oib.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 11:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6I1QduONzRk4Tv8ov0hwrPiSEUvQzo6Eb29eGxiXMog=;
 b=oGTTcflGINY+Nomzx+yp9zJFBGXK/WE/dWPMZQYWA3FDeyrJgO9kxpk73yq7hmSjh9
 DlkcvsgFoffJ4YnRKYEwd50OVlsfPY+NmQ+lOlhwX0bUsFoWgfmIyBB2F17IzET1Jbrx
 OV4jvbnlLnhCG/wKP0Kl7YQkoujeyxv/xymc+rFDmzCJADP1LJZ/+9ES+EC1CEG5cI2O
 +wwnuQh1eCzWsn0coznCAOJ8UT8vAYIpGbL17h4EzvIUek3lEmnMdWxaS9rJLx73JZaf
 Y+Q2/08cW0BhKmXqNBAC5Ssx9rYTDsRLRjWSU580O+7PM3L2bbiTvRyy4RlEH34e5irF
 6V2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6I1QduONzRk4Tv8ov0hwrPiSEUvQzo6Eb29eGxiXMog=;
 b=tTv9Lbs0EWyMNcmB6n3yaN3rklH1GcF9t8nHPGcHBaj1+p2+xw0Q2YzmE8EaGyBu4S
 flf5otJx5KWpEMtPBphmmqfR+5bmuCAxzOCX9tB/FhY+TMW7JGCzsxlmv7qwSXlqWPkT
 DJvEe170XkajaOO2+XfE//ZycSDijJQbl4Y1Ycb8YtJKTkEgkKMmy1LxIMzPS8V0l1JN
 Ph/+X20lRoCB9heQRp9U1mGLHv80uGvPwJm4BCWG0Fad+g4sAAK+gd8ImGuJC4R9OARf
 nZ0w3Gbgb/OLmmyJGpbVFqP7NbPSW/YxpqoG2Eq/i9wdbn7lndxS06o5uuJ/9sOZ7gsn
 U0Eg==
X-Gm-Message-State: APjAAAVwjKYiTwqFV/22xUHr1xKmvXDMmiEPhnO2cZz8xf1/dBGARhQU
 bilY2V8MFuA2UioLb308G9rAr3AjOfWZ5RQfFXrZRDcs
X-Google-Smtp-Source: APXvYqw0Psi0K/u9hX6HLZ1x2eAbiSUuuLu8VmnTT8xRBMP+Rw0ESxJUoH5U+mfZHJCbnCnl9rAv5IqeHeILUOwHhCY=
X-Received: by 2002:aca:720c:: with SMTP id p12mr5996194oic.113.1557080891508; 
 Sun, 05 May 2019 11:28:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190501170520.4733-1-rosenp@gmail.com>
 <20190503171216.GA29467@meh.true.cz>
 <CAKxU2N-yN3BqJD3asR7V7rO7Bpxq9aO+4ciKtj03z+KBTx5E8A@mail.gmail.com>
In-Reply-To: <CAKxU2N-yN3BqJD3asR7V7rO7Bpxq9aO+4ciKtj03z+KBTx5E8A@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 5 May 2019 11:27:49 -0700
Message-ID: <CAKxU2N_tgA=nWGaEM4UR0xDVtATQ18NetoG3en7TR1YraENs9Q@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_112813_183347_D29E9F78 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] elfutils: Fix compile with uClibc-ng
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBNYXkgMywgMjAxOSBhdCAxMTowMCBBTSBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWls
LmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIE1heSAzLCAyMDE5IGF0IDEwOjEyIEFNIFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+ID4KPiA+IFJvc2VuIFBlbmV2IDxyb3NlbnBA
Z21haWwuY29tPiBbMjAxOS0wNS0wMSAxMDowNToyMF06Cj4gPgo+ID4gSGksCj4gPgo+ID4gPiBQ
cm9iYWJseSBnbGliYyB0b28uIGFyZ3BfaGVscCB0YWtlcyBhIGNoYXIgKi4gbm90IGNvbnN0IGNo
YXIgKi4KPiA+Cj4gPiBJJ20gd29uZGVyaW5nIGlmIHdlIG5lZWQgdG8gY2FyeSBhbm90aGVyIHBh
dGNoIGZvcmV2ZXIsIHRodXMgaWYgaXQgd291bGRuJ3QgYmUKPiA+IGJldHRlciB0byBiYWNrcG9y
dCB1cHN0cmVhbWVkIHBhdGNoIGFuZC9vciBidW1wIHRvIGZpeGVkIHVwc3RyZWFtIHZlcnNpb24u
Cj4gSnVzdCBzZW50IHVwc3RyZWFtLgpUaGlzIHdhcyBhY2NlcHRlZCB1cHN0cmVhbS4KPiA+Cj4g
PiAtLSB5bmV6ego+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogUm9zZW4gUGVuZXYgPHJvc2VucEBn
bWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgcGFja2FnZS9saWJzL2VsZnV0aWxzL01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ID4gPiAgLi4uL2xpYnMvZWxmdXRpbHMv
cGF0Y2hlcy8yMDAtdWNsaWJjLW5nLWNvbXBhdC5wYXRjaCAgfCAxMSArKysrKysrKysrKwo+ID4g
PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgcGFja2FnZS9saWJzL2VsZnV0aWxzL3BhdGNoZXMvMjAwLXVj
bGliYy1uZy1jb21wYXQucGF0Y2gKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL3BhY2thZ2UvbGli
cy9lbGZ1dGlscy9NYWtlZmlsZSBiL3BhY2thZ2UvbGlicy9lbGZ1dGlscy9NYWtlZmlsZQo+ID4g
PiBpbmRleCBjNmIxZDZkZjY1Li5lMTQ4ZGYwOTZjIDEwMDY0NAo+ID4gPiAtLS0gYS9wYWNrYWdl
L2xpYnMvZWxmdXRpbHMvTWFrZWZpbGUKPiA+ID4gKysrIGIvcGFja2FnZS9saWJzL2VsZnV0aWxz
L01ha2VmaWxlCj4gPiA+IEBAIC05LDcgKzksNyBAQCBpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5t
awo+ID4gPgo+ID4gPiAgUEtHX05BTUU6PWVsZnV0aWxzCj4gPiA+ICBQS0dfVkVSU0lPTjo9MC4x
NzYKPiA+ID4gLVBLR19SRUxFQVNFOj0xCj4gPiA+ICtQS0dfUkVMRUFTRTo9Mgo+ID4gPgo+ID4g
PiAgUEtHX1NPVVJDRTo9JChQS0dfTkFNRSktJChQS0dfVkVSU0lPTikudGFyLmJ6Mgo+ID4gPiAg
UEtHX1NPVVJDRV9VUkw6PWh0dHBzOi8vc291cmNld2FyZS5vcmcvJChQS0dfTkFNRSkvZnRwLyQo
UEtHX1ZFUlNJT04pCj4gPiA+IGRpZmYgLS1naXQgYS9wYWNrYWdlL2xpYnMvZWxmdXRpbHMvcGF0
Y2hlcy8yMDAtdWNsaWJjLW5nLWNvbXBhdC5wYXRjaCBiL3BhY2thZ2UvbGlicy9lbGZ1dGlscy9w
YXRjaGVzLzIwMC11Y2xpYmMtbmctY29tcGF0LnBhdGNoCj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAwMDAuLmIwYWUxYzc0MDEKPiA+ID4gLS0tIC9kZXYvbnVs
bAo+ID4gPiArKysgYi9wYWNrYWdlL2xpYnMvZWxmdXRpbHMvcGF0Y2hlcy8yMDAtdWNsaWJjLW5n
LWNvbXBhdC5wYXRjaAo+ID4gPiBAQCAtMCwwICsxLDExIEBACj4gPiA+ICstLS0gYS9saWIvY29s
b3IuYwo+ID4gPiArKysrIGIvbGliL2NvbG9yLmMKPiA+ID4gK0BAIC0xMzIsNyArMTMyLDcgQEAg
dmFsaWQgYXJndW1lbnRzIGFyZTpcblwKPiA+ID4gKyAgIC0gJ2F1dG8nLCAndHR5JywgJ2lmLXR0
eSdcbiIpLAo+ID4gPiArICAgICAgICAgICAgICAgICAgcHJvZ3JhbV9pbnZvY2F0aW9uX3Nob3J0
X25hbWUsIGFyZyk7Cj4gPiA+ICsgICAgICAgICAgIGFyZ3BfaGVscCAoJmNvbG9yX2FyZ3AsIHN0
ZGVyciwgQVJHUF9IRUxQX1NFRSwKPiA+ID4gKy0gICAgICAgICAgICAgICAgICAgICBwcm9ncmFt
X2ludm9jYXRpb25fc2hvcnRfbmFtZSk7Cj4gPiA+ICsrICAgICAgICAgICAgICAgICAgICAgKGNo
YXIgKikgcHJvZ3JhbV9pbnZvY2F0aW9uX3Nob3J0X25hbWUpOwo+ID4gPiArICAgICAgICAgICBl
eGl0IChFWElUX0ZBSUxVUkUpOwo+ID4gPiArICAgICAgICAgfQo+ID4gPiArICAgICB9CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
