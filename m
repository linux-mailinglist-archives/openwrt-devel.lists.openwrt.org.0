Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B5F1FFF15
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 01:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rcsa13eUQ5Bn2tyNkpFswdxQel+MKC9Qq1OHXI4uuo=; b=pLimycSPUHbtHm
	1BYqmwtCASCCpzXiUF6V2WodzXUB89X9Le3mV6BP9awZUPhNrQhOUPZ60TxUy3wgPzgv7I5ljFO9r
	fg4FhyV46WCxWhMp6jlTAkhsWujGHWvePGRWtGvMbPaMUG91oNq6P0I4MKKdZbZV+tq4N6U1k09nf
	1zc0Y/7tqa2iQZTmP/wp+L9USzCQvqoWiZsqTCzmw41zCs9b0l0l+jlECoztMbDR8xGVCSwagIaDf
	p6prhkfP8RKSMPgcOyd3fCWKAZ3ZnEXh9ZY7YMZDTLmNr7c3dR0R0ca+S0AoeFexY+Oa75Q9mjUWg
	V9G2pNh7M2CkskCeEjmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm4QO-0007vl-0P; Thu, 18 Jun 2020 23:58:28 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm4QB-0007v0-Rd
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 23:58:17 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 779c3f0d
 for <openwrt-devel@lists.openwrt.org>;
 Thu, 18 Jun 2020 23:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=Ku3TNAkaZcVOkYWYzuDMQfnNUcE=; b=XHra5b
 71ugf4rUxQqO6Au+3/4bpPRPCGrOr8oTBNiqmSVx92daqXprvaB4b4900tf50PKV
 XoyKRF0nX1j26O4P1hLhCBR5E2YjW/v8HWtWQJJ8WGI2lNI52iYb3Bt4IdI4VcZ9
 RSrQOGv0CNOdO4z85GL0K8/I5X5LgsC0FTCMpnEkDMENqL4mYk2Ajzl6A4ZJDQQx
 v/jts6lsgnKo9WL+kIrFb/5e4K78NabYz8mkopMtAfxjwij6uOdj1YZN5dX2Rhc4
 fwFaLuefVQyvKcvDZ/FNPWxv4mxArj0xK8RxxBaQQRGXz9AJAR4a2oAc2YGlb5FU
 dYtFhD4VArmLZHGg==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 51ec0d87
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <openwrt-devel@lists.openwrt.org>;
 Thu, 18 Jun 2020 23:39:56 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id i1so7648355ils.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 16:58:13 -0700 (PDT)
X-Gm-Message-State: AOAM532o58MtXzL/e1WVax5VI9QvgzQN0wCUA2+BNSZxT3pK9B0zJ0vl
 0whIFaGClYycKJCFPEI8uI+GoHCEH5y6/2eyK9Y=
X-Google-Smtp-Source: ABdhPJyYdyROGfAtZ0EHCrApKE0WwbNlk9ayBtc0bPDhNZEjpMNXRwWqKbsfhJsrujZHWGu3dlaO1tN8cgr7yJwj6bk=
X-Received: by 2002:a92:2515:: with SMTP id l21mr1039747ill.64.1592524692514; 
 Thu, 18 Jun 2020 16:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
 <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
 <CAHmME9p51XvLEZ7QbDreEXym34S4XZZaRotAv4aRiT5D4Pz3XA@mail.gmail.com>
 <20200617204510.GA396261@zx2c4.com> <20200617205443.GA403252@zx2c4.com>
 <CAHmME9qX2dVBf-23g1ASW1EFaX_4VLUH5QZBCM71NVfe6rtaxA@mail.gmail.com>
 <CALjTZvYnH_xQ45LLZ3Mp_oxatjWons4JFFpf3F_01F20s3SwVQ@mail.gmail.com>
In-Reply-To: <CALjTZvYnH_xQ45LLZ3Mp_oxatjWons4JFFpf3F_01F20s3SwVQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 18 Jun 2020 17:58:01 -0600
X-Gmail-Original-Message-ID: <CAHmME9q6KRAHQQ5oEVDPsZUqmaShAvoobfXmSRFSnzXJ=ngYNQ@mail.gmail.com>
Message-ID: <CAHmME9q6KRAHQQ5oEVDPsZUqmaShAvoobfXmSRFSnzXJ=ngYNQ@mail.gmail.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_165815_965655_CE07779E 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Any progress on R_ARM_THM_JUMP11 issues?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 WireGuard mailing list <wireguard@lists.zx2c4.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Looks as though in the end this is a binutils bug with
-fvisibility=hidden. Details on
https://sourceware.org/bugzilla/show_bug.cgi?id=12532#c9

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
