Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1242234B
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 May 2019 12:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:To:References:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gNim5ifOF5bjH6jykHFJ2FrBZMnmMFAjZzmWcBLbKBg=; b=XebcDqGLQq1MimMUAH0AUi1VF
	4ja0ZuIzujjMzhRzXby+qCLMfvy2jZsUi1IpbDclVr5gjY/GyFcIDaGU5PpcB+W/HDv5Uo+r/cZEe
	iru6/qnKlYJdXVJT4TGvpvH4rpaBwXmhPrELeIPX4yWVXpG2oTw+Hh8VDIYP8v8e/695RRdBU9JFR
	/jRy4vMoV1NmcWgsJTMmo0lrIK0nhxUDP4SOfqmSTPWG/AERNn35610MWkDX3RQ6LQmNDDyqgBbQH
	0ZcotQSQpqU+uqFF5rOshMIxTt84VrI25vYONUQw08o/dSLLk1Wv0pMoek+9mmFtOsN5kM+6vbft0
	ByWg0vHrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRwkq-0002lN-Q0; Sat, 18 May 2019 10:39:52 +0000
References: <mailman.41036.1558171939.2376.openwrt-devel@lists.openwrt.org>
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <mailman.41036.1558171939.2376.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Message-ID: <mailman.41048.1558175987.2376.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: tapper via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.21
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: tapper <j.lancett@ntlworld.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Issue flashing and booting wrt3200acm.
Content-Type: multipart/mixed; boundary="===============8064261551641167977=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Sat, 18 May 2019 10:39:52 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8064261551641167977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8064261551641167977==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from know-smtprelay-omc-1.server.virginmedia.net ([80.0.253.65])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRwki-0002kx-MQ
	for openwrt-devel@lists.openwrt.org; Sat, 18 May 2019 10:39:46 +0000
Received: from [192.168.1.163] ([86.23.121.202])
	by cmsmtp with ESMTPA
	id RwkfhelMAixsKRwkghhR0O; Sat, 18 May 2019 11:39:42 +0100
X-Originating-IP: [86.23.121.202]
X-Authenticated-User: j.lancett@ntlworld.com
X-Spam: 0
X-Authority: v=2.3 cv=XtvUx2N9 c=1 sm=1 tr=0 a=a5KajJ5fhWd0zR9doEW4CQ==:117
 a=a5KajJ5fhWd0zR9doEW4CQ==:17 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=N659UExz7-8A:10 a=jdP34snFAAAA:8 a=rwpjkBr-qOP8P6-rWFsA:9 a=pILNOxqGKmIA:10
 a=jlphF6vWLdwq7oh3TaWq:22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ntlworld.com;
	s=meg.feb2017; t=1558175982;
	bh=yvPla4fktY5SYw7TKehv0D4SHjDItgnduHGLK5XUGrk=;
	h=Subject:References:To:From:Date:In-Reply-To;
	b=sK2TUAs6U037zRf1dsBIYSfqu0bCBTsrPYn9CnHbLPl9sQsmTc6xC3cz/xrVUzliz
	 HVhnksZYET0yR2Ss5+RS5qFrxc9uLQ/4tyNRMmruD7aA4jTg51LWIoE/1YBThfA+QY
	 hxHod8yZtwuYFRm2e2rjPz4Wd9Bp9WYFV2Nj2WKDpRhIQ/amMmN9Tj4v1gAepvL2mJ
	 Pv2R4G2LYRWBFsyBTF270F7V8+ZMgPvHCeul1C9w2BZNvZVmXb8zoz+rAwh5ysayXC
	 Ty2e/H9CUWQmFthQGcSO5xClM/EINeJIX10a6Qf0NZ+vKkUGyzYsBr1XcE8+55v4yg
	 zxU+5nnUQBMbw==
Subject: Re: [OpenWrt-Devel] Issue flashing and booting wrt3200acm.
References: <mailman.41036.1558171939.2376.openwrt-devel@lists.openwrt.org>
To: openwrt-devel@lists.openwrt.org
From: tapper <j.lancett@ntlworld.com>
Message-ID: <362e2479-048b-9e25-0b5f-43e7ed4994e1@ntlworld.com>
Date: Sat, 18 May 2019 11:39:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0a1
MIME-Version: 1.0
In-Reply-To: <mailman.41036.1558171939.2376.openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfM7g+gol3NCY/8rsUVzrYgtT47h+iTmrF41Nebsr8jmDUHJCHF/jizB+nMw6Es1utBYYuGVAisJrs26pV2xyURVtFWYKdebg3nAYsjIMvtgjoP7pnAeX
 8BfSt0+KN5d+jXd+lwb3YL4EyY5QStOPUAAX56lt7JKCdGpEj4m1TU8BGzdGU9CeT91j6FNbq2lRUQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_033944_872543_BE75A746 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.0.253.65 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Pleas disregard it was my falt sorry!
Broken .config!

Tapper
On 18/05/2019 10:32, tapper via openwrt-devel wrote:
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
> 
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 



--===============8064261551641167977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8064261551641167977==--
