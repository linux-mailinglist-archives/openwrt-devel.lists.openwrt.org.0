Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3875BEC6
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 16:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iGRH27ZN0vcl5DDXfIdSp0sZ3BTkQgP/K6dS8ORvR+c=; b=MqsHxZ7B13QAcF7Q7xD7xK4PL
	45iD5WEp5mY4+/jpukd/wYbkslJmLXn2ZdMBcj9VJSLPgD3pNbCSqPTZBm75HJF6+aoaB3bXtmsmb
	oE1yBUvKjFZp4JeuslZB3wTprhIhxNLd1/jcchLgU3dbqSdPIJrbz5KpCSKUzn0AOUEwWltyQWPYI
	hmqX2SYTx1lf+KxGX45TQhjYKEnWCwfHog6JyywNthw1oy5JylsUvADWmMDcqKhy2yuskUz/TtKoo
	7okyt9wPFD1rfMSyS0nrN9i4QpaiZWrmv4kcz4/MQhD20OjZ2Rs2QtVLHKZ8tzUCUtD3H1JxsSHF1
	vfrxN0Zow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxhD-00009e-9E; Mon, 01 Jul 2019 14:54:19 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxh2-0008QC-8o
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 14:54:09 +0000
Received: from p5dcfb199.dip0.t-ipconnect.de ([93.207.177.153]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hhxgz-000266-Ci; Mon, 01 Jul 2019 16:54:05 +0200
To: Alban <albeu@free.fr>
References: <20190621153828.20699-1-albeu@free.fr>
 <1b3378bc-3acb-04ef-f9c0-8b4ab158da85@phrozen.org>
 <20190701162342.65246402@eos>
From: John Crispin <john@phrozen.org>
Message-ID: <31f8d0cd-36e8-6f0a-5319-1f4e1bd49043@phrozen.org>
Date: Mon, 1 Jul 2019 16:54:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190701162342.65246402@eos>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_075408_473519_D9476901 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] runqueue: Fix the callbacks order in
 runqueue_task_kill()
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 01/07/2019 16:23, Alban wrote:
> On Mon, 1 Jul 2019 15:48:47 +0200
> John Crispin <john@phrozen.org> wrote:
>
>> On 21/06/2019 17:38, Alban Bedel wrote:
>>> Since commit 11e8afea (runqueue should cal the complete handler from
>>> more places) the call to the complete() callback has been moved to
>>> runqueue_task_complete().  However in runqueue_task_kill()
>>> runqueue_task_complete() is called before the kill() callback.
>>> This will result in a use after free if the complete() callback free
>>> the task struct.
>>>
>>> Furthermore runqueue_start_next() is already called at the end of
>>> runqueue_task_complete(), so there is no need to call it again in
>>> runqueue_task_kill().
>>>
>>> Signed-off-by: Alban Bedel <albeu@free.fr>
>>> ---
>>>    runqueue.c | 4 +---
>>>    1 file changed, 1 insertion(+), 3 deletions(-)
>>>
>>> diff --git a/runqueue.c b/runqueue.c
>>> index a1d0133..4c621aa 100644
>>> --- a/runqueue.c
>>> +++ b/runqueue.c
>>> @@ -196,11 +196,9 @@ void runqueue_task_kill(struct runqueue_task
>>> *t) if (!t->queued)
>>>    		return;
>>>    =

>>> -	runqueue_task_complete(t);
>>>    	if (running && t->type->kill)
>>>    		t->type->kill(q, t);
>>> -
>>> -	runqueue_start_next(q);
>>> +	runqueue_task_complete(t);
>>>    }
>>>    =

>>>    void runqueue_stop(struct runqueue *q)
>> Hi,
>>
>> runqueue_task_complete() will decrement running which, if called
>> after the kill clause might not even trigger the kill() call. I am
>> assuming you are running a custom runqueue_task_type ?
> No, TBH I haven't tested this, but as there is no documentation I had
> to go through the code and noticed this suspicious construct. I then
> saw commit 6a7fb7d8d (runqueue: fix use-after-free bug) which confirmed
> that complete() is expected to free the task struct, which with the
> above code will clearly lead to an access after free.
>
> But I don't really see what you mean, 'running' is a boolean so it
> can't be decremented. Did you mean 'running_tasks'?
>
> Alban


i did actually mean running_task, I'll have another look later on today

 =A0=A0=A0 John


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
