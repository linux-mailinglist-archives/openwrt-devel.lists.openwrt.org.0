Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F91222B2
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 May 2019 11:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KJhgZKb/3rLCT5w3NN4GD8I/f6zsW2kXTy2Db43GOJQ=; b=EfecoIRpACd5hEidPYpdSEB/XI
	WlEo4AXhhcaKn130ymBd4RFFCZzOmBr6cFsw/jLl+uTQSJ3NTPxxSFijCM777/2vS8qS5+mGnUptK
	53b/mvmSoemVK9jvxmwtPeyAplE9KgroNaNZWv11O9dzLqBr8P5zJ+M+887VASP6oB/e256xb2WOg
	Rf+ZySJW5np7h2pw/euWXuj9EFZewaYIMr8Mn1+pPL1kZVwpJCU7BXZtQLnOknVhtOSRxYpxsrzUl
	HvLjTMnD2PRzifkCPDt4PCbKIddAXgBS/b41PmWehl3hz1UmBodm9AcdzZLHpsHhUx5/GjTLKqHNv
	gXkRNB1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRvhW-0006Bz-HB; Sat, 18 May 2019 09:32:22 +0000
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.41036.1558171939.2376.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] Issue flashing and booting wrt3200acm.
Content-Type: multipart/mixed; boundary="===============1386904257904759514=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Sat, 18 May 2019 09:32:22 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1386904257904759514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1386904257904759514==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from know-smtprelay-omc-1.server.virginmedia.net ([80.0.253.65])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRvhQ-0006Bd-Lb
	for openwrt-devel@lists.openwrt.org; Sat, 18 May 2019 09:32:18 +0000
Received: from [192.168.1.163] ([86.23.121.202])
	by cmsmtp with ESMTPA
	id RvhJheXHqixsKRvhKhhO7D; Sat, 18 May 2019 10:32:10 +0100
X-Originating-IP: [86.23.121.202]
X-Authenticated-User: j.lancett@ntlworld.com
X-Spam: 0
X-Authority: v=2.3 cv=XtvUx2N9 c=1 sm=1 tr=0 a=a5KajJ5fhWd0zR9doEW4CQ==:117
 a=a5KajJ5fhWd0zR9doEW4CQ==:17 a=IkcTkHD0fZMA:10 a=ObpwngYOuBKANYl9uXMA:9
 a=QEXdDO2ut3YA:10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ntlworld.com;
	s=meg.feb2017; t=1558171930;
	bh=nVh+Mac7RQunDKZxQTzq2xMMZ3Mp2M7UN/xKMCsW8kU=;
	h=To:From:Subject:Date;
	b=CEkt5uYBpeF5bLGZjXRW6dNh+kNV5GA6KwJKUAkvemUGh74WoMUZdXvbuwgWVmyFv
	 RBhzYgbwBSTimYsigT/YSzrlJDEF75ONw7/zPk7D2C0EPI12awsBZJVoNa25Yz2FpI
	 5vZ4Llyz1LGkUzXe9Spdhpz/z8B+F303b8d0Do86Pk1r2+56K3aa7OddmduSAL0wGg
	 ME/1dIzgpPD6ECtbVLecqlrlONAl3QW8LrWxf+NAx3N9eindXLqn7HamnjxDcGH2YR
	 5KAM61FPuk7DIVkPWvHmWuAiUsI479sYYJhmhpINGggoS3xZVAatNmzqT2j8Xk6+LA
	 d/CrSUSDXHBAA==
To: openwrt-devel@lists.openwrt.org
From: tapper <j.lancett@ntlworld.com>
Subject: Issue flashing and booting wrt3200acm.
Message-ID: <633c5c6c-fb84-70e1-455a-78aeadc9332f@ntlworld.com>
Date: Sat, 18 May 2019 10:31:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0a1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfFXOrkPGffUJ3ZBXUTDE9Kw2Rt7CYOjRnJybZWKNWIE+4m7z+ig+6s2CBTLLD94dRPZpHhOyrlpuy/lhBi5PnCOYyMw9VcV7wh1mWniIhp22bQe3+G7s
 +uSC7R0igu2TxZtzXwUZ/coO3ROC97TbG3Bmodkj8qMNefxpbRrlWtPdaHExSFyozqv7VieMYRireQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_023216_984264_42C6A6AA 
X-CRM114-Status: UNSURE (   7.10  )
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

Hi people I built a new snapshot for my wrt3200acm. I am on r9987 now, 
but cant flash the new build of r10016 or r10027 When I look in the 
opposite partition I can see that it shows up as having kernel 4.14.19 
but I cant boot to it. When I try it just boots back up in to r9987.

Tapper


--===============1386904257904759514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1386904257904759514==--
