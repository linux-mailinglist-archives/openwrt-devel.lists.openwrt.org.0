Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177811BA19D
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 12:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3BN8kA8vOtWnlYwHRmEf3mhf0jjHEsuLEVSV7R4WQw=; b=ccxR5bnGCmJByb
	WuUJi/JiRkc6TPJ8yZpAuRm5OGINqHqGWiRO7HJC5IqYX7wpvRKEN0E4svK9GKg0kAumz9w4WE+cf
	miRJ9SEhLwO+byIVAWAt93rqE+6FFv4kiiEEfYssHxqJ9iXunOmzX/o3kES310X+hPBNqpEYrNkfr
	THw8r9NJ4R8D7sl7DkL1d9xVnFEdVoVifQri2n3yB4C+7KMVBIbRlG6s50yWau8sNeQ8I2sHIZ5eB
	Um0tk+ZIlUMuopSrL97qvchwMGPKXR3yzy0I/olZhRnJzxybdIzF59deY7dgwylqROtxBA+pqLunQ
	JeJDqqTsRAwH1LHMFwdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1GM-0006Cg-06; Mon, 27 Apr 2020 10:45:22 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1GE-0006BN-CY
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 10:45:15 +0000
Received: by mail-wm1-x32d.google.com with SMTP id u127so19880248wmg.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 03:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:in-reply-to:message-id:references:mime-version;
 bh=UqH2tm9x7fEiAaHV4aog3NqWXc53kcoKDlueciDBwG8=;
 b=fbTcCiI1+d4EpqVOCJh1CckMy0TzYq2RCo3Ny7z/ICKhODjdRnY4RC8iKOR8LCMXbq
 mKRes7To55oEIzvlXfB32RYcLRKUDec2V0H2XzFuRgTpZLNX7Or03El/BWsmAUq4KZmJ
 WWx8JDjl6rZ9lhTUtZcEBMmtRWG3grvTjNAyKM9Hbzbwfno3AQ/VidwByPj3ZkqoUeKQ
 tC6ke9Q/b/CBXlqnBf3lE2vkA4czTTLvgFCZ518LaF5k6ALZPdsjSJJ8oItn5EJdt5EJ
 +ZBJ4uk9SOwdMIGUOI7TZFjhP2G9rYSmgYXAqNi+NOUf5+tJ7jbatmlKwux7P0y5BZ+2
 /osg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
 :references:mime-version;
 bh=UqH2tm9x7fEiAaHV4aog3NqWXc53kcoKDlueciDBwG8=;
 b=GQNO4K94REfOz+spQuIJvPenv/+qNYlINMDTPXh9K0Y7i0+XevxfhF+It7ukaJKIGW
 nXeBorzEMQEEuC8ukurYw7z0hpxi/cY7ehW8s4wNy44JlnBsWconvih+vxhi9fVaSHY9
 clQ7Dna9f/DD0MbzFydFH/pUrOjkqPhWolO8rPeZQnjrkjtFVFw/mEM9pliaayxTlVUm
 Sag5rGD8yA50zaN7E6fSxYxfp4vvJiAgkS5eJcPQsIuwQNtCAuoriEIcsnCuSZrfSJOD
 ve9lmbECO4xmfjAn+tcN7HAfZ1p7OCLVgpAAE21exex7+U4vA/nCCLZyI56G/fOXbQhn
 wB/A==
X-Gm-Message-State: AGi0PuZ1wXaSyVsk/f4fgg+KJefiVYomk654uue6ilhm6UvRP3639Tvi
 h85DKPTGPCloHHtkxINqE6KIGQmt
X-Google-Smtp-Source: APiQypLyVKl7snN6/LjlB8hiLwQmA+VEcOQXzsgWjXEuA+YBuLkE6osVL+ctBql58B6/OomTfpsAaA==
X-Received: by 2002:a1c:6389:: with SMTP id
 x131mr26728534wmb.155.1587984312342; 
 Mon, 27 Apr 2020 03:45:12 -0700 (PDT)
Received: from eeeinsomma
 (host199-253-dynamic.15-87-r.retail.telecomitalia.it. [87.15.253.199])
 by smtp.gmail.com with ESMTPSA id y63sm15743355wmg.21.2020.04.27.03.45.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 03:45:11 -0700 (PDT)
Date: Mon, 27 Apr 2020 12:45:10 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Jeonghum Joh <oosaprogrammer@gmail.com>, openwrt-devel@lists.openwrt.org
In-Reply-To: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
Message-ID: <alpine.LNX.2.22.413.2004271242270.636@localhost.localdomain>
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_034514_428284_456C4DA2 
X-CRM114-Status: UNSURE (   4.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello!
And thank you for your interest in OpenWRt.

In general, in OpenWRt, pieces work togeter because they are developed to do so.
A connection manager duty is not, arguably, to set up firewall rules.
you can surely inspect a lot of the informations you would need from the UCI interface / libraries, and ubus itself.
If the modem is QMI based, you may switch to upstream connection manager solutions, which would help in some regards.
Or maybe using a ModemManager-based solution?

Thanks,
Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
