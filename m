Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9622212A40E
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 20:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jdz7/uoAfdgJ4oigEEdFYM0mh7Jj9eO+diBNnUjz2uA=; b=MIpYMeCgwI8rbu
	M6GzETpDOrIkyVUYYt2/IsYokAkJxIUQEcIuWl+7I1q6I2KO2ehHbnqNpd4wOTC8wPbwW7fpV9q25
	pDOz2ceVY5whL1jRo5VqGg19658qU+NTCAKtEFJLeObLHcUhOuuYG5g+jL4zL3YhvwBL1x4pJfDk1
	d1/pbm/GTd4JJe9xulQQNfMeRJVyXvPTSU6SueKvmto06VqRYxnO2hvGULxEFzOiucnlmS/QRUgTf
	g35t6sy5QjeB48StYagMxoeaofqpLtX2EAkD3xQYiOpq4/i42MGV1gkGY2LxU3IuCo+PItmYp4gi7
	HcgLv+UJ2E36t3Hqz58A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijqC6-0001vt-9i; Tue, 24 Dec 2019 19:50:14 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijqBx-0001G5-O3
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 19:50:07 +0000
Received: by mail-ot1-x32a.google.com with SMTP id d7so22932357otf.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 11:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=8wPC9pMFRS4xNDjjx0b2xYsyaURuEUw9cMFXLemHJ7o=;
 b=ukdWlTzkQLSft3/wRz/LBKphx3Klkhm/eCstjT/OwbuRglRkL/CMOYt6RqiLJ9twy9
 MB4xNEhGTjm+a/M9ke/Y/L0DXpJYLKx7/oetOvfiEMOuzV3ijTNuzwWr8uw6456I5Az2
 y3kXnqNdVWacYQueOZRefPaf3zsvFczYHUS7rl+WxmqLUhfiZPpgDayRBPbNQYWJdz2B
 DNyeVcQezJcMOdfKl4tmjUhhHexRYKaw5bNAauLv3rKYnW274W8lgeiBaN0VimglDysK
 wfkrciqcbBckMalQydcAQ2vuBePOg4IYKvsvLQd7VmQy2OgTGMAsaXq5nT16W5QnwT4c
 JCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=8wPC9pMFRS4xNDjjx0b2xYsyaURuEUw9cMFXLemHJ7o=;
 b=OPDmRx0hIveH+o55uBR9moV+5qcJJvKYAQ7ezdnTAnqV+Ud6v4/BFe0SAjLnivpb07
 b1m5pJ1p/EoHMhwluLB5wp4vPIA+aq8v/lN3+/8NzsWEteist8k9vbldWPD2PYxZtRxT
 FLVXb6l+1CR0ZIN0TnQ1YBh9kSuw9HndksvAKnlTEc973DWK2qKoeBNxT+8glkzPBf9r
 AkSt8bbOrQN9RbL1c5ZUlgSqwQvLsryxpX0P4L2DaXWDy6CwX6X2KvHbkEySnfcnQIHk
 yTh2aoS6sCd2MBLNGXP9QC/rD8d4MqC8qo6YECWqmCXUQYNspEpFbkaR/MepKKhuTku3
 E2qg==
X-Gm-Message-State: APjAAAXvK6rScogrjwS+JwsbRdjD7yU8aAbGFlWMOcmWjSxaP4pl0yqM
 AkWDA51uDyjRV200XvTGsU4OPypA42PpMU2T4lo=
X-Google-Smtp-Source: APXvYqxXkyMhusL5fj7W8jaGAXAxIiPUwpByN6aOH8WKFrBEa6yC2sH25lfiP00T3xivTIr8i9/YItD2SLuylIRQfy0=
X-Received: by 2002:a05:6830:22ee:: with SMTP id
 t14mr39173403otc.236.1577217004029; 
 Tue, 24 Dec 2019 11:50:04 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Tue, 24 Dec 2019 11:50:03 -0800 (PST)
In-Reply-To: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 24 Dec 2019 20:50:03 +0100
Message-ID: <CAKR_QVJ3bFbFpCy4vDx7g2R_8qjBJUva2EHo6AK8TvRuhVcuYQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_115005_821611_FAF5392C 
X-CRM114-Status: UNSURE (   4.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: Jo-Philipp Wich <jow@openwrt.org>,
 LEDE Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

And what about this one?
https://bugs.openwrt.org/index.php?do=details&task_id=2593

Some regulatorty bugs?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
