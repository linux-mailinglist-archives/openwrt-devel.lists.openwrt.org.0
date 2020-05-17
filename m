Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DBE1D6CDB
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 22:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyCsKqMIFbbskhIH5ngnyMO8PxSb4goQv05PHnOP5k8=; b=J/4vHaBY6uhB7G
	3SAlGK+h10Ga9F24m1Al2zkkRhcWuOyUm8OisOJMqaD4Op9rzi2o4nzcASyZMXb1dj55q/vaRkk39
	PQBjDAAZlf+8J3bZYFBIYQYyXOYE1HXCy3LlJ1lc2B411I4s3CP7ZVDHEi179oXwiGVZ58HUY7rpz
	Y9qDYapzYTo5j2kdS+CNk8ZrxLdfpIc/T1IaHeAp/cICPWz+qC+4QWwFS8QW/dNNgBCN2Xbynscno
	Qbh5vQ6RfuMALfDICHFH9R/xoU3QSzambz5UyWt0dgJYr4CJQzoWTf5wszjn3+O8KpQmvoaguBuP8
	wz2sZUleu5WMuXx42GyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaPq0-00045H-JX; Sun, 17 May 2020 20:24:44 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaPpv-00044s-2C
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 20:24:40 +0000
Received: by mail-io1-xd43.google.com with SMTP id 79so8482617iou.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 May 2020 13:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Mc1I2ZFZ4ZQCTAqwr+CLzBL7JBVLsmvyMhnac6+Xf2s=;
 b=lg/eZlKGU3YO0gJZ3YQuDhm6xWV0gRPY1B2gwmxHY2FizRUZCWlgyA/NXCa641JqHO
 aQPgJEflQvg4FYj/tv+8WVvJsy/ZcH2RKHSBfQcQ3tt6iy9etuqyK+09f9YKrwrtLQ3w
 nC9zvTB2YrwxByMSTUIM/fY+zcl8QHU5ESsTRFZnV3nFreCosr2Rfp0mde3dFL+q7sqa
 bkIFamFC+NORbw5GuPKMkXJEw9JNf7dMjalc1p34Iyq+hLeMEkdagLSGMcXtihEiynSi
 PR94BEbP1javKzJm6C4wCO5ZQsjdWe3a4zDfntLaNiopCA3PxDHv5In3IZ7CEJ8HAXmk
 mshQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Mc1I2ZFZ4ZQCTAqwr+CLzBL7JBVLsmvyMhnac6+Xf2s=;
 b=bItPjLwiqiELa/T+DmxmFwZt+R/Lpm0CkAsCpxCVmfuhwGEpwq/DMq96FXeTZkcJaR
 7cyLy5CQBUJSN/nZuYgi4LjqoQzmZA3oibm6cKAWJ/Asb4psVkK5zs56b5ttWAOSkfUS
 WqwMXo0waREW6H1sKTh4gBzSs2PtOh1UsQsx6BX/kHC1ftF07siq5EYTR/dbiHQHehAu
 DSATl4rzdhcfsZu+AhA0gU5fAfv15aswZZk3tLK6j+boRPBA/yR3eMMI+2QFiLLTfuXL
 8hr9Q9GFLhGU3vrkBD6fSusqJHTSMieKcO4MB/1BSAiG4QkT+bSAXdaysCPKDZF531za
 /MCw==
X-Gm-Message-State: AOAM532ngMdxCRYIvhQDrbkbMqBa/FPvXu/ZWqweFhGC7/0ijccPPy7r
 JKxUlqWumflVMJgeFwypETWKaTxrQzjQH6jTBjEKIMSWttM=
X-Google-Smtp-Source: ABdhPJz4P87Pyn55dVnMBzyjcNPZq1TatpxO96m9vWrbWq0seTNS3LKUobJOXnk87eFU5uMF0q58L6SAHtrj4ebkW9k=
X-Received: by 2002:a5d:97cf:: with SMTP id k15mr11717084ios.49.1589747077716; 
 Sun, 17 May 2020 13:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200517182851.33553-1-hacks@slashdirt.org>
 <20200517194609.34294-1-hacks@slashdirt.org>
In-Reply-To: <20200517194609.34294-1-hacks@slashdirt.org>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sun, 17 May 2020 16:24:25 -0400
Message-ID: <CAOdf3gogkVvy==Na9tDTmf2fJFcggNyT2erBHHTNPa4yDu6Yfg@mail.gmail.com>
To: =?UTF-8?Q?Thibaut_VAR=C3=88NE?= <hacks@slashdirt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_132439_120398_03EA3603 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] package/base-files: caldata: work
 around dd's limitation
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

SGkgVGhpYmF1dCwKCkxlIGRpbS4gMTcgbWFpIDIwMjAgw6AgMTU6NDYsIFRoaWJhdXQgVkFSw4hO
RSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4gYSDDqWNyaXQgOgo+Cj4gdGw7ZHI6IGRkIHdpbGwgc2ls
ZW50bHkgdHJ1bmNhdGUgdGhlIG91dHB1dCBpZiByZWFkaW5nIGZyb20gc3BlY2lhbAo+IGZpbGVz
IChlLmcuIHN5c2ZzIGF0dHJpYnV0ZXMpIHdpdGggYSB0b28gbGFyZ2UgYnMgcGFyYW1ldGVyLgo+
Cj4gVGhpcyBwcm9ibGVtIHdhcyBleHBvc2VkIG9uIHNvbWUgUm91dGVyQk9BUkQgaXBxNDB4eCBk
ZXZpY2VzIHdoaWNoIHVzZSBhCj4gY2FsZGF0YSBwYXlsb2FkIHdoaWNoIGlzIGxhcmdlciB0aGFu
IFBBR0VfU0laRSwgY29udHJhcnkgdG8gYWxsIG90aGVyCj4gY3VycmVudGx5IHN1cHBvcnRlZCBS
b3V0ZXJCT0FSRCBkZXZpY2VzOiB0aGUgY2FsZGF0YSB3b3VsZCBmYWlsIHRvCj4gcHJvcGVybHkg
bG9hZCB3aXRoIHRoZSBjdXJyZW50IHNjcmlwdHMuCj4KPiBCYWNrZ3JvdW5kOiBkZCBkb2Vzbid0
IHNlZW0gdG8gY29ycmVjdGx5IGhhbmRsZSByZWFkKCkgcmVzdWx0cyB0aGF0Cj4gcmV0dXJuIGxl
c3MgdGhhbiByZXF1ZXN0ZWQgZGF0YS4gc3lzZnMgYXR0cmlidXRlcyBoYXZlIGEga2VybmVsIGV4
Y2hhbmdlCj4gYnVmZmVyIHdoaWNoIGlzIGF0IG1vc3QgUEFHRV9TSVpFIGJpZywgc28gb25seSAx
IHBhZ2UgY2FuIGJlIHJlYWQoKSBhdCBhCj4gdGltZS4gSW4gdGhpcyBjYXNlLCBpZiBicyBpcyBs
YXJnZXIgdGhhbiBQQUdFX1NJWkUsIGRkIHdpbGwgc2lsZW50bHkKPiB0cnVuY2F0ZSBibG9ja3Mg
dG8gUEFHRV9TSVpFLiBXaXRoIHRoZSBjdXJyZW50IHNjcmlwdHMgdXNpbmcgYnM9PHNpemU+Cj4g
Y291bnQ9MSwgdGhlIGRhdGEgaXMgdHJ1bmNhdGVkIHRvIFBBR0VfU0laRSBhcyBzb29uIGFzIHRo
ZSByZXF1ZXN0ZWQKPiA8c2l6ZT4gZXhjZWVkcyB0aGlzIHZhbHVlLgo+Cj4gVGhpcyBjb21taXQg
d29ya3MgYXJvdW5kIHRoaXMgcHJvYmxlbSBieSB1c2luZyBgY2F0YCBpbiB0aGUgY2FsZGF0YQo+
IHJvdXRpbmVzIHRoYXQgY2FuIHJlYWQgZnJvbSBhIGZpbGUgKHJvdXRpbmVzIHRoYXQgcmVhZCBm
cm9tIG10ZCBkZXZpY2VzCj4gYXJlIHVudG91Y2hlZCkuIGNhdCBjb3JyZWN0bHkgaGFuZGxlcyBw
YXJ0aWFsIHJlYWQgcmVxdWVzdHMuIFRoZSBvdXRwdXQKPiBpcyB0aGVuIHBpcGVkIHRvIGRkIHdp
dGggdGhlIHNhbWUgcGFyYW1ldGVycyBhcyBiZWZvcmUsIHRvIGVuc3VyZSB0aGF0Cj4gdGhlIHJl
c3VsdGluZyBmaWxlIHJlbWFpbnMgZXhhY3RseSB0aGUgc2FtZS4KPgo+IFRoaXMgaXMgYSBzaW1w
bGUgd29ya2Fyb3VuZCwgdGhlIGRvd25zaWRlIGlzIHRoYXQgaXQgdXNlcyBhIHBpcGUgYW5kIG9u
ZQo+IG1vcmUgZXhlY3V0YWJsZSwgYW5kIHRoZXJlZm9yZSBoYXMgYSBsYXJnZXIgbWVtb3J5IGZv
b3RwcmludCBhbmQgaXMKPiBzbG93ZXIuIFRoaXMgaXMgZGVlbWVkIGFjY2VwdGFibGUgY29uc2lk
ZXJpbmcgdGhlc2Ugcm91dGluZXMgYXJlIG9ubHkKPiB1c2VkIGF0IGJvb3QgdGltZS4KPgo+IFRl
c3RlZC1ieTogUm9iZXJ0IE1hcmtvIDxyb2JpbWFya29AZ21haWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4KPiAtLS0KPiB2MjogbGVh
dmUgYSBjb21tZW50IGluIHNjcmlwdHMKPiAtLS0KPiAgcGFja2FnZS9iYXNlLWZpbGVzL01ha2Vm
aWxlICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiAgcGFja2FnZS9iYXNlLWZpbGVzL2Zp
bGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaCB8IDggKysrKystLS0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlIGIvcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlCj4g
aW5kZXggZDhlN2MzMTg3OC4uNWZiMjc1NTMzZCAxMDA2NDQKPiAtLS0gYS9wYWNrYWdlL2Jhc2Ut
ZmlsZXMvTWFrZWZpbGUKPiArKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUKPiBAQCAt
MTIsNyArMTIsNyBAQCBpbmNsdWRlICQoSU5DTFVERV9ESVIpL3ZlcnNpb24ubWsKPiAgaW5jbHVk
ZSAkKElOQ0xVREVfRElSKS9mZWVkcy5tawo+Cj4gIFBLR19OQU1FOj1iYXNlLWZpbGVzCj4gLVBL
R19SRUxFQVNFOj0yMjAKPiArUEtHX1JFTEVBU0U6PTIyMQo+ICBQS0dfRkxBR1M6PW5vbnNoYXJl
ZAo+Cj4gIFBLR19GSUxFX0RFUEVORFM6PSQoUExBVEZPUk1fRElSKS8gJChHRU5FUklDX1BMQVRG
T1JNX0RJUikvYmFzZS1maWxlcy8KPiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL2Zp
bGVzL2xpYi9mdW5jdGlvbnMvY2FsZGF0YS5zaCBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9s
aWIvZnVuY3Rpb25zL2NhbGRhdGEuc2gKPiBpbmRleCA2ODYyZGE3MTY0Li5lMjJjN2QyN2U2IDEw
MDY0NAo+IC0tLSBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRh
dGEuc2gKPiArKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxk
YXRhLnNoCj4gQEAgLTY0LDcgKzY0LDggQEAgY2FsZGF0YV9mcm9tX2ZpbGUoKSB7Cj4KPiAgICAg
ICAgIFsgLW4gIiR0YXJnZXQiIF0gfHwgdGFyZ2V0PS9saWIvZmlybXdhcmUvJEZJUk1XQVJFCj4K
PiAtICAgICAgIGRkIGlmPSRzb3VyY2Ugb2Y9JHRhcmdldCBpZmxhZz1za2lwX2J5dGVzIGJzPSRj
b3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9kZXYvbnVsbCB8fCBcCj4gKyAgICAgICAjIGRk
IGRvZXNuJ3QgaGFuZGxlIHBhcnRpYWwgcmVhZHMgZnJvbSBzcGVjaWFsIGZpbGVzOiB1c2UgY2F0
Cj4gKyAgICAgICBjYXQgJHNvdXJjZSB8IGRkIG9mPSR0YXJnZXQgaWZsYWc9c2tpcF9ieXRlcyBi
cz0kY291bnQgc2tpcD0kb2Zmc2V0IGNvdW50PTEgMj4vZGV2L251bGwgfHwgXAoKTm90IHdheSBt
b3JlIGVsZWdhbnQsIGJ1dCB5b3UgY291bGQgdXNlIHNvbWV0aGluZyBsaWtlCnRhaWwgLWMrJHN0
YXJ0ICRzb3VyY2UgfCBoZWFkIC1jJGNvdW50ID4gJHRhcmdldAp3aXRoICRzdGFydCA9PSAkb2Zm
c2V0KzEgSSB0aGluawoKIyBoZWFkIC1jMTAgL2Rldi96ZXJvIHwgd2MKICAgICAgICAwICAgICAg
ICAgMCAgICAgICAgMTAKIyBoZWFkIC1jMTAgL2Rldi96ZXJvIHwgdGFpbCAtYyszIHwgd2MKICAg
ICAgICAwICAgICAgICAgMCAgICAgICAgIDgKCj4gICAgICAgICAgICAgICAgIGNhbGRhdGFfZGll
ICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxpYnJhdGlvbiBkYXRhIGZyb20gJHNvdXJjZSIKPiAgfQo+
Cj4gQEAgLTczLDEzICs3NCwxNCBAQCBjYWxkYXRhX3N5c2ZzbG9hZF9mcm9tX2ZpbGUoKSB7Cj4g
ICAgICAgICBsb2NhbCBvZmZzZXQ9JCgoJDIpKQo+ICAgICAgICAgbG9jYWwgY291bnQ9JCgoJDMp
KQo+Cj4gKyAgICAgICAjIGRkIGRvZXNuJ3QgaGFuZGxlIHBhcnRpYWwgcmVhZHMgZnJvbSBzcGVj
aWFsIGZpbGVzOiB1c2UgY2F0Cj4gICAgICAgICAjIHRlc3QgZXh0cmFjdCB0byAvZGV2L251bGwg
Zmlyc3QKPiAtICAgICAgIGRkIGlmPSRzb3VyY2Ugb2Y9L2Rldi9udWxsIGlmbGFnPXNraXBfYnl0
ZXMgYnM9JGNvdW50IHNraXA9JG9mZnNldCBjb3VudD0xIDI+L2Rldi9udWxsIHx8IFwKPiArICAg
ICAgIGNhdCAkc291cmNlIHwgZGQgb2Y9L2Rldi9udWxsIGlmbGFnPXNraXBfYnl0ZXMgYnM9JGNv
dW50IHNraXA9JG9mZnNldCBjb3VudD0xIDI+L2Rldi9udWxsIHx8IFwKPiAgICAgICAgICAgICAg
ICAgY2FsZGF0YV9kaWUgImZhaWxlZCB0byBleHRyYWN0IGNhbGlicmF0aW9uIGRhdGEgZnJvbSAk
c291cmNlIgo+Cj4gICAgICAgICAjIGNhbid0IGZhaWwgbm93Cj4gICAgICAgICBlY2hvIDEgPiAv
c3lzLyRERVZQQVRIL2xvYWRpbmcKPiAtICAgICAgIGRkIGlmPSRzb3VyY2Ugb2Y9L3N5cy8kREVW
UEFUSC9kYXRhIGlmbGFnPXNraXBfYnl0ZXMgYnM9JGNvdW50IHNraXA9JG9mZnNldCBjb3VudD0x
IDI+L2Rldi9udWxsCj4gKyAgICAgICBjYXQgJHNvdXJjZSB8IGRkIG9mPS9zeXMvJERFVlBBVEgv
ZGF0YSBpZmxhZz1za2lwX2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9k
ZXYvbnVsbAo+ICAgICAgICAgZWNobyAwID4gL3N5cy8kREVWUEFUSC9sb2FkaW5nCj4gIH0KPgo+
IC0tCj4gMi4xMS4wCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
