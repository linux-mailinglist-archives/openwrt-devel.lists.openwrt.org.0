Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483371F8BF3
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 02:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MoVST4jBbysc21UfhAf7BLCmSNtuVQx42A/kbN8ppU4=; b=tTC5QTgkfENDomaLbLLkH2hmay
	3TIYJBbzEckbdyGzmZsCEhH++yHXZW1b3s2Ur8bIAEDumNDCtcZLX4PHS2HdtQcqmavLBfmqVKb8u
	ebQ/7S8eyX7nVpCA/j2X4aJaZSlJNr8Gu+GZEtKAUc0uH39afMDphmV8r+Va/GJi1pCkdVw+QsLHV
	nqFmsayRrC+8MwyF5fHp7O5tNDkQ6eDa2REuJVns0bsY2G2lYzwEwTf1dqbf/bSiWswICwm+d+iDr
	d0HqgtQPuaL/37uy9pux4XbfubBfSYgTocbU+Du8DoDSaBz0ZcEIsDmoYmW9TjT5guBOwMXLipqxR
	pslJq4yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkdBB-0002ZD-5w; Mon, 15 Jun 2020 00:40:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkdB2-0002YM-AW
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 00:40:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id r9so12939519wmh.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jun 2020 17:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=lcWcXVytAhTQYddAa7UAF84DwuAfy5we26AIf2vUqJk=;
 b=gd73GN/+mFr4FMTTk9m3dVVL47avxRR84uF1odKTgDHmhYCHhS0ZmgOEGTzDueIbpB
 eSghiIQCWzkfRVjU2bM1bo+S6fa3CSElSQW6eSevC3UDhkYFFIn/sUsuQO3jgP/oMq+i
 wkVrGqGKoi3xAoqXM3+tLDrizdSpTKmWQBIf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=lcWcXVytAhTQYddAa7UAF84DwuAfy5we26AIf2vUqJk=;
 b=D1/klo94HPuDFh59H6Ndha6nPmjbJMgEGhdDJUXq/a8WT3a/j3THe3dftyHU2Vl5P6
 rtzQGZYO5UUl0zL6PWHtewu5bV2KQF671iYqKQ9c5DRo3+OwpPb1BfVZ1q4ybPoQ1f3M
 KazH6N8at+6e1uyDZYcjVtCD5YjTtI6OXlrUz1kiK8ftKwa7I49/r+TM+uQH0/4BG8Hv
 8VVVoyO6csgYY1oLLRLEI3Sowu2fRYIVtHRuXVntLbQ2Lo2pudf8nZi3P/kGyd2J0jJG
 u1oXgu8ZnfHs/Vyz/Ez9vAwkwkTypRFRDo+VZNQfY9yXpIAJUk8l03KdAGUguwPCyua1
 N1WA==
X-Gm-Message-State: AOAM531pn0zCnbGiZtHmHEgpmCqZ44oBFCPIeGZaJuX6Q9MSEqbhFDOY
 Tc7xl1VdSDQrhDOxkZ8LPoJlUUpM5zOU5kQEKEhN7tTKvapHL+CB
X-Google-Smtp-Source: ABdhPJwika+oh3rT8g8LbqJ8VkyZe/IZiCc7eD6awtxFj5VRFnzHLnB0kRNLY1175a61UlU7F56s6R9s8DAGxC0g4fU=
X-Received: by 2002:a1c:4189:: with SMTP id
 o131mr10671051wma.110.1592181637685; 
 Sun, 14 Jun 2020 17:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.23006.1592164856.2542.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.23006.1592164856.2542.openwrt-devel@lists.openwrt.org>
From: Stan Grishin <stangri@melmac.net>
Date: Sun, 14 Jun 2020 17:40:27 -0700
Message-ID: <CALu2O0Rm6UC=dMNAGMH5+r4QmJ6CciEY10DLZdY-JLvqJAurWA@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>, 
 =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_174040_367768_E4AFA575 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [RFC PATCH] kirkwood: use real model names for
 Linksys devices
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

PiAtLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLS0KPiBGcm9tOiAiUGF3ZcWC
IERlbWJpY2tpIiA8cGF3ZWxkZW1iaWNraUBnbWFpbC5jb20+Cj4gVG86IEFkcmlhbiBTY2htdXR6
bGVyIDxmcmVpZnVua0BhZHJpYW5zY2htdXR6bGVyLmRlPgo+IENjOiBPcGVuV3J0IERldmVsb3Bt
ZW50IExpc3QgPG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+Cj4gQmNjOgo+IERhdGU6
IFN1biwgMTQgSnVuIDIwMjAgMjE6NTI6MTEgKzAyMDAKPiBTdWJqZWN0OiBSZTogW09wZW5XcnQt
RGV2ZWxdIFtSRkMgUEFUQ0hdIGtpcmt3b29kOiB1c2UgcmVhbCBtb2RlbCBuYW1lcyBmb3IgTGlu
a3N5cyBkZXZpY2VzCj4gc29iLiwgMTMgY3plIDIwMjAgbyAyMjowOSBBZHJpYW4gU2NobXV0emxl
cgo+IDxmcmVpZnVua0BhZHJpYW5zY2htdXR6bGVyLmRlPiBuYXBpc2HFgihhKToKPiA+Cj4KPiBI
aSBBZHJpYW4sCj4KPiA+IFRoaXMgcmVwbGFjZXMgdGhlIGludGVybmFsIGRldmljZSBuYW1lcyAi
QXVkaSIgYW5kICJWaXBlciIgd2l0aCB0aGUKPiA+IHJlYWwgbW9kZWwgbmFtZXMsIHdoaWNoIGEg
dXNlciB3b3VsZCBsb29rIGZvci4gVGhpcyBtYWtlcyB0aGUKPiA+IExpbmtzeXMgZGV2aWNlcyBv
biB0aGlzIHRhcmdldCBjb25zaXN0ZW50IHdpdGggdGhlIG5hbWVzIHJlY2VudGx5Cj4gPiBjaGFu
Z2VkIGZvciBtdmVidSBiYXNlZCBvbiB0aGUgc2FtZSBpZGVhLgo+ID4KCklzIGl0IHBvc3NpYmxl
IHRvIGdldCBhIG5vdGlmaWNhdGlvbiB3aGVuL2lmIHRoaXMgaXMgbWVyZ2VkIHNvIEkgY291bGQK
dXBkYXRlIHRoZSBkZXZpY2UgbmFtZXMgYXQKaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvbHVj
aS90cmVlL21hc3Rlci9hcHBsaWNhdGlvbnMvbHVjaS1hcHAtYWR2YW5jZWQtcmVib290L2x1YXNy
Yy9hZHZhbmNlZC1yZWJvb3QvZGV2aWNlcwpmb3IgbHVjaS1hcHAtYWR2YW5jZWQtcmVib290PwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
