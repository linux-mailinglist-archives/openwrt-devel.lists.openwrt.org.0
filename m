Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A510DE4C
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 Nov 2019 17:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFGHkKdmwmpIVo6sXHkwdMC0vwrJoQpihRsE7Kq6zoY=; b=VCDwgOwAZysC6F
	mnak3GyNqoFyx/CZdNJKb1jh1UKOpgjuQLRSxUWg6iJo3PFSR4dQ7S3/Eu3a4XjgeTHwUeblp6NKS
	+D/msdny/syW8lE5XiO5XPnoxT2/QO9PVNoovzzxNmeu8YZ4L31ZwlnD5PHwd6TiXgegluoUT9p6T
	dXc8m9T+ty3UwrD90jwpf/tOXUX0bsNuGW9fKvSdujhw8o9kdk7sTD1NRq4B9Huv6MQctZae/wccC
	IaJqWC5zRCN1CGfj/3AUGTtzM+IMG6tyKbxUQvkLURnQyeK5HS+3+2Mhsr6ULdbrWwFluR7K92HZ8
	DxE8rIHxfK0SbAgastvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib5nO-0007Op-Ll; Sat, 30 Nov 2019 16:40:34 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib5nI-0007OF-4i
 for openwrt-devel@lists.openwrt.org; Sat, 30 Nov 2019 16:40:29 +0000
Received: by mail-pj1-x102f.google.com with SMTP id o11so152042pjp.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 Nov 2019 08:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=sVbCN5GBrL8n6nwn4530XMHTfA9zEIONTd1rHQek158=;
 b=Rmu/LLPEjpY9tFwb6FwiS9/CGLBE+MZKedD3YXq09HB0V+GrtPx4y9bpuavDDJj6jG
 1OkahPB+tU7mfvsgQScDDt7FAGqO4AIetC1EpqqFAmyTCfHufiJ1vNLpQP6FdxWOOyme
 pbRR2huzYLi3NUZVQzMZoUMhFoZWLeAo8WE5YuCPmmfEpZ12dxaPzy6/NQXwMvTqPgZf
 3+mpm4Pf9WQqPiLFT7ZSf2tIVz5LAoMYkHWg74tF1w9+BtM5EnKCa86hzA+/7UDtxw5m
 S+hzozC0jSSLxfajTMbZWac52xukfaBB4YHDv8qqHb8Z12hXiiiaQiNXHedSC/WwunG7
 78ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=sVbCN5GBrL8n6nwn4530XMHTfA9zEIONTd1rHQek158=;
 b=CA1uYxXMPTtSyVvfVW2ke0K/BjUoqHGabIeNwBYsJCHrkVjTEm69vJHYWEljGCLEa6
 tIYomCBv/5ILm6UYvT1jYIco0m5i0FEyq88Z+bSYZP/MiFMcUaO+m8XGmwG4QNsEiclE
 6XNOTxkRFNDd7Memn4Lg3MOZ238kjtO8dhvOj58JFg1i62vkLR63nYQoDazFUqPuA+mC
 Spg4CGAi5U7ff+vxJariLogUO+JpoGd/rpltZS1x1kBSpEQtpi69MtOEVof1bBnKwc68
 r2/8wag5dQApTfqrZ9EhFzK4IV+UnvMZqrte403KNYqTsK9POVHSej7enMfp82ZzKjkI
 3Vag==
X-Gm-Message-State: APjAAAXiw82Rv0cmIYZzokVHtiSJejHBlNqiAN0JYc7CChkM5u0Sh91/
 mVNzC2zSAUmpulEX9m/cfUQIxmW4h+I=
X-Google-Smtp-Source: APXvYqxdVeZTknSVO6ZcaEa1+dF0Pg5Q6OwwYxbG9Ngc2v1UQiFb0RMlV4VdOpHZduWOJQQRmOLbiw==
X-Received: by 2002:a17:902:7205:: with SMTP id
 ba5mr18989226plb.95.1575132026772; 
 Sat, 30 Nov 2019 08:40:26 -0800 (PST)
Received: from [192.168.0.194] ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id h185sm28475746pgc.87.2019.11.30.08.40.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 30 Nov 2019 08:40:25 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 30 Nov 2019 08:40:24 -0800
Message-Id: <55BAA4C3-2DFE-413B-8ECF-F5075969DC63@gmail.com>
References: <20191130154148.GH61235@meh.true.cz>
In-Reply-To: <20191130154148.GH61235@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: iPhone Mail (17B111)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_084028_209399_3DA030B0 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] default compiler hardening options for all C
 projects [Was: Re: [PATCH] uci: Fix Wformat-nonliteral warning]
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PiAKPiAKPj4gV291bGRuJ3QgaXQgbWFrZSBzZW5zZSB0byBlbmFibGUgZm9sbG93aW5nIGhhcmRl
bmluZyBmbGFncyAobWF5YmUgY29uc2lkZXIKPj4gb3RoZXJzIGFzIHdlbGw/KToKPj4gCj4+ICAt
V2Vycm9yPWZvcm1hdC1zZWN1cml0eSAKPj4gIC1XZXJyb3I9Zm9ybWF0LW5vbmxpdGVyYWwKQWN0
dWFsbHkgdGhlIGZsYWcgSSB1c2VkIHdhcyAtV2Vycm9yPWZvcm1hdD0yLiBJdCBpbmNsdWRlcyBh
bGwgb2YgdGhlbS4KClRoZSBub25saXRlcmFsIHdhcm5pbmcgaXMgbm90IGFwcGxpY2FibGUgZXZl
cnl3aGVyZS4gSW4gc29tZSBwYWNrYWdlcywgYSBzdHJ1Y3QgbWVtYmVyIGlzIHBhc3NlZC4gVGhp
cyBjYW5ub3QgYmUgZml4ZWQuCj4gCj4gRllJLCBmb2xsb3dpbmcgdWNpIHBhdGNoOgo+IAo+IGRp
ZmYgLS1naXQgYS9DTWFrZUxpc3RzLnR4dCBiL0NNYWtlTGlzdHMudHh0Cj4gaW5kZXggOTJhZGY0
YTQ3MTIxLi41NmExNGUyYjJiNDAgMTAwNjQ0Cj4gLS0tIGEvQ01ha2VMaXN0cy50eHQKPiArKysg
Yi9DTWFrZUxpc3RzLnR4dAo+IEBAIC00LDcgKzQsNyBAQCBQUk9KRUNUKHVjaSBDKQo+IAo+ICBT
RVQoQ01BS0VfU0hBUkVEX0xJQlJBUllfTElOS19DX0ZMQUdTICIiKQo+ICBBRERfREVGSU5JVElP
TlMoLU9zIC1XYWxsIC1XZXJyb3IgLVdleHRyYSAtLXN0ZD1nbnU5OSAtZzMgLUkuCj4gLURVQ0lf
UFJFRklYPSIke0NNQUtFX0lOU1RBTExfUFJFRklYfSIpCj4gLUFERF9ERUZJTklUSU9OUygtV25v
LXVudXNlZC1wYXJhbWV0ZXIpCj4gK0FERF9ERUZJTklUSU9OUygtV25vLXVudXNlZC1wYXJhbWV0
ZXIgLVdlcnJvcj1mb3JtYXQtbm9ubGl0ZXJhbCAtV2Vycm9yPWZvcm1hdC1zZWN1cml0eSkKPiAK
PiB5aWVsZHMgZm9sbG93aW5nIGVycm9yIHdpdGggY2xhbmctMTAgb24gQ0lbMV06Cj4gCj4gY2xp
LmM6MTk2OjE5OiBlcnJvcjogZm9ybWF0IHN0cmluZyBpcyBub3QgYSBzdHJpbmcgbGl0ZXJhbCBb
LVdlcnJvciwtV2Zvcm1hdC1ub25saXRlcmFsXQo+ICAgICAgICAgdmZwcmludGYoc3RkZXJyLCBm
bXQsIGFwKTsKV2lsbCB0YWtlIGEgbG9vay4gTXkgaW5pdGlhbCBpbXByZXNzaW9uIGlzIHRoYXQg
aXTigJlzIG5vdCBlYXNpbHkgZml4ZWQuCj4gCj4gMS4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6
L29wZW53cnQtdWNpLy0vam9icy8zNjU2MTcyOTMKPiAKPiAtLSB5bmV6ego+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
